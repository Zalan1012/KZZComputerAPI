using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace ComputeShopApi.Models.DTOs
{
    public class UpdateComputerDto
    {
        public string? Brand { get; set; }
        public string? Type { get; set; }
        public double Display { get; set; }
        public int Memory { get; set; }
        public Guid OsId { get; set; }
    }
}
