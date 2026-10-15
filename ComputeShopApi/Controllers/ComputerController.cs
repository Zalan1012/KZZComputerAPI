using ComputeShopApi.Models;
using ComputeShopApi.Models.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ComputeShopApi.Controllers
{
    [Route("computers")]
    [ApiController]
    public class ComputerController : ControllerBase
    {
        public ComputerShopDbContext context = new();

        [HttpGet("getAllComputer")]
        public object GetAllComputer()
        {
            var computers = context.Computers.ToList();

            if (computers.Count > 0)
            {
                return StatusCode(200, new { message = "Sikeres lekérdezés.", result = computers});
            }

            return StatusCode(404, new { message = "Üres a tábla.", result = computers });
        }

        [HttpGet("getComputerById")]
        public object GetComputerById([FromQuery]Guid id)
        {
            var computer = context.Computers.SingleOrDefault(c => c.Id == id);

            if (computer != null)
            {
                return StatusCode(200, new { message = "Sikeres lekérdezés.", result = computer });
            }

            return StatusCode(404, new { message = "nincs ilyen Id.", result = computer });
        }

        [HttpPost("addNewComputer")]
        public object AddNewComputer(AddNewComputerDto addNewComputerDto )
        {
            var computer = new Computer
            {
                Id = Guid.NewGuid(),
                Brand = addNewComputerDto.Brand,
                Type = addNewComputerDto.Type,
                Display = addNewComputerDto.Display,
                Memory = addNewComputerDto.Memory,
                CreatedTime = DateTime.Now,
                OsId = addNewComputerDto.OsId
            };

            if (computer != null)
            {
                context.Computers.Add(computer);
                context.SaveChanges();

                return StatusCode(201, new { message = "Sikeres hozzáadás.", result = computer });
            }

            return StatusCode(400, new { message = "Sikertelen hozzáadás.", result = computer });
        }

        [HttpPut("updateComputer")]
        public object UpdateComputer([FromQuery]Guid id, UpdateComputerDto updateComputerDto)
        {
            var computer = context.Computers.FirstOrDefault(c => c.Id == id);

            if (computer != null)
            {
                computer.Brand = updateComputerDto.Brand;
                computer.Type = updateComputerDto.Type;
                computer.Display = updateComputerDto.Display;
                computer.Memory = updateComputerDto.Memory;
                computer.OsId = updateComputerDto.OsId;

                context.Computers.Update(computer);
                context.SaveChanges();

                return StatusCode(200, new { message = "Sikeres frissítés.", result = computer });
            }

            return StatusCode(404, new { message = "Sikertelen frissítés.", result = computer });
        }

        [HttpDelete("deleteComputer/{id}")]
        public object DeleteComputer([FromRoute] Guid id)
        {
            var computer = context.Computers.Find(id);

            if (computer != null) 
            { 
                context.Computers.Remove(computer);
                context.SaveChanges();

                return StatusCode(204);
            }

            return StatusCode(404, new { message = "Nincs ilyen Id."});
        }
    }
}
