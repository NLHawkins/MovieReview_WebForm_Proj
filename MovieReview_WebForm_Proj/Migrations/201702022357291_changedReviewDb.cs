namespace MovieReview_WebForm_Proj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changedReviewDb : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Reviews", "MovieID_Id", "dbo.Movies");
            DropIndex("dbo.Reviews", new[] { "MovieID_Id" });
            RenameColumn(table: "dbo.Reviews", name: "MovieID_Id", newName: "MovieId");
            AddColumn("dbo.Reviews", "MovieName", c => c.String());
            AlterColumn("dbo.Reviews", "MovieId", c => c.Int(nullable: false));
            CreateIndex("dbo.Reviews", "MovieId");
            AddForeignKey("dbo.Reviews", "MovieId", "dbo.Movies", "Id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Reviews", "MovieId", "dbo.Movies");
            DropIndex("dbo.Reviews", new[] { "MovieId" });
            AlterColumn("dbo.Reviews", "MovieId", c => c.Int());
            DropColumn("dbo.Reviews", "MovieName");
            RenameColumn(table: "dbo.Reviews", name: "MovieId", newName: "MovieID_Id");
            CreateIndex("dbo.Reviews", "MovieID_Id");
            AddForeignKey("dbo.Reviews", "MovieID_Id", "dbo.Movies", "Id");
        }
    }
}
