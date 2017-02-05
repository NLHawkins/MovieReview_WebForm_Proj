namespace MovieReview_WebForm_Proj.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class datetimetoString : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Movies", "Release", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Movies", "Release", c => c.DateTime(nullable: false));
        }
    }
}
