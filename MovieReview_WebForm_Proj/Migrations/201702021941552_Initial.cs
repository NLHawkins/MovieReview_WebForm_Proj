namespace MovieReview_WebForm_Proj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Movies",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Genre = c.String(),
                        Link = c.String(),
                        Release = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Reviews",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        Rating = c.Int(nullable: false),
                        MovieID_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Movies", t => t.MovieID_Id)
                .Index(t => t.MovieID_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Reviews", "MovieID_Id", "dbo.Movies");
            DropIndex("dbo.Reviews", new[] { "MovieID_Id" });
            DropTable("dbo.Reviews");
            DropTable("dbo.Movies");
        }
    }
}
