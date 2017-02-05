namespace MovieReview_WebForm_Proj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class deletedMovieNameFromMovieDb : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Reviews", "MovieName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Reviews", "MovieName", c => c.String());
        }
    }
}
