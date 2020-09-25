using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using EnsekTestProject.Models;

namespace EnsekTestProject.Data
{
    public class EnsekTestProjectContext : DbContext
    {
        public EnsekTestProjectContext(DbContextOptions<EnsekTestProjectContext> options)
            : base(options)
        {
        }

        public DbSet<Account> Accounts { get; set; }
        public DbSet<MtrReading> MtrReadings { get; set; }

        public DbSet<ProcessedFiles>  ProcessedFiles { get; set; }
    }



}

