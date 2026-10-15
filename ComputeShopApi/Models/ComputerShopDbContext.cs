using Microsoft.EntityFrameworkCore;

namespace ComputeShopApi.Models
{
    public class ComputerShopDbContext : DbContext
    {
        public ComputerShopDbContext(DbContextOptions options) : base(options)
        {
        }

        public ComputerShopDbContext()
        {
        }

        public DbSet<Osystem> Osystems { get; set; }
        public DbSet<Computer> Computers { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string conn = "server=localhost;port=3307;database=computerr;user=root;password=;";


            optionsBuilder.UseMySql(conn, ServerVersion.AutoDetect(conn));
        }
    }
}
