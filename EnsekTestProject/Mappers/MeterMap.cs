using CsvHelper.Configuration;
using EnsekTestProject.Models;


namespace EnsekTestProject.Mappers
{
    public sealed class MeterMap : ClassMap<MtrReading>
    {
        public MeterMap()
        {
            
            Map(m => m.AccountId).Name(Constants.CsvHeaders.AccountId);
            Map(m => m.MeterReadingDateTime).Name(Constants.CsvHeaders.MeterReadingDateTime);
            Map(m => m.MeterReadValue).Name(Constants.CsvHeaders.MeterReadValue);
            
        }
    }
}
