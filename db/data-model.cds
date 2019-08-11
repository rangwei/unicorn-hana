namespace my.unicorn;

entity Unicorns {
	key ID: UUID;
	update_on: String;
	name: String;
	logo_url: String;
	permalink: String;
	tag_page: String;
	country: String;
	last_funding_on: String;
	total_equity_funding: String;
	founded_on: Integer;
	category: String;
	rumored: Integer;
	post_money_val: String;
	funding_rounds: Association to many FundingRounds on funding_rounds.unicorn = $self;
	valuation_change: Integer;
	date_of_valuation: String;
}

entity FundingRounds {
	key ID: UUID;
	uuid: UUID;
	investors: Association to many InvestorsRecords on investors.funding_round = $self;
	lead_investor: Association to many LeadInvestorRecords on lead_investor.funding_round = $self;
	short_name: String;
	valuation: String;
	funding_date: String;
	unicorn: Association to Unicorns;
}

entity InvestorsRecords {
	key ID: UUID;
	name: String;
	funding_round: Association to FundingRounds;
}
entity LeadInvestorRecords {
	key ID: UUID;
	name: String;
	funding_round: Association to FundingRounds;
}