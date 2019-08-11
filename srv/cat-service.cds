using my.unicorn as my from '../db/data-model';


service CatalogService {
    entity Unicorns as projection on my.Unicorns;
    entity FundingRounds as projection on my.FundingRounds;
    entity InvestorsRecords as projection on my.InvestorsRecords;
    entity LeadInvestorRecords as projection on my.LeadInvestorRecords;
}
