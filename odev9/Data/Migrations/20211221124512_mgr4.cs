using Microsoft.EntityFrameworkCore.Migrations;

namespace webProje.Data.Migrations
{
    public partial class mgr4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "HeadLine",
                table: "Reviews",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "HeadLine",
                table: "Reviews");
        }
    }
}
