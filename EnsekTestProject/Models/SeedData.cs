using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EnsekTestProject.Data;
namespace EnsekTestProject.Models
{
    public static class SeedData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new EnsekTestProjectContext(
                serviceProvider.GetRequiredService<
                    DbContextOptions<EnsekTestProjectContext>>()))
            {
                // Look for any movies.
                if (context.Accounts.Any())
                {
                    return;   // DB has been seeded
                }

                context.Accounts.AddRange(
                    new Account
                    {
                        AccountNo = 2344,
                        FirstName = "Tommy",
                        LastName = "Test"

                    },
                      new Account
                      {
                          AccountNo = 2233,
                          FirstName = "Barry",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 8766,
                          FirstName = "Sally",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2345,
                          FirstName = "Jerry",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2346,
                          FirstName = "Ollie",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2347,
                          FirstName = "Tara",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2348,
                          FirstName = "Tammy",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2349,
                          FirstName = "Simon",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2350,
                          FirstName = "Colin",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2351,
                          FirstName = "Gladys",
                          LastName = "Test"

                      },
                      new Account
                      {
                          AccountNo = 2352,
                          FirstName = "Greg",
                          LastName = "Test"
                      },
                      new Account
                      {
                          AccountNo = 2353,
                          FirstName = "Tony",
                          LastName = "Test"
                      },

                      new Account
                      {
                          AccountNo = 2355,
                          FirstName = "Arthur",
                          LastName = "Test"
                      },
                      new Account
                      {
                          AccountNo = 2356,
                          FirstName = "Craig",
                          LastName = "Test"
                      },
                      new Account
                      {
                          AccountNo = 6776,
                          FirstName = "Laura",
                          LastName = "Test"
                      },
                      new Account
                      {
                          AccountNo = 8766,
                          FirstName = "Tommy",
                          LastName = "Test"
                      },
                      new Account
                      {
                          AccountNo = 4534,
                          FirstName = "JOSH",
                          LastName = "Test"
                      },

                        new Account
                        {
                            AccountNo = 1234,
                            FirstName = "Freya",
                            LastName = "Test"

                        },
                        new Account
                        {
                            AccountNo = 1239,
                            FirstName = "Noddy",
                            LastName = "Test"
                        },

                        new Account
                        {
                            AccountNo = 1240,
                            FirstName = "Archie",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1241,
                            FirstName = "Lara",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1242,
                            FirstName = "Tim",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1243,
                            FirstName = "Graham",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1244,
                            FirstName = "Tony",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1245,
                            FirstName = "Neville",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1246,
                            FirstName = "Jo",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1247,
                            FirstName = "Jim",
                            LastName = "Test"
                        },
                        new Account
                        {
                            AccountNo = 1248,
                            FirstName = "Pam",
                            LastName = "Test"
                        }

             );
                context.SaveChanges();
            }
        }
    }
}

    