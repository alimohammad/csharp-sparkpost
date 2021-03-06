﻿Feature: Transmissions

Background:
	Given my api key is 'yyy'

Scenario: Sending a regular email
	Given I have a new transmission
	And the transmission is meant to be sent from 'darren@cauthon.com'
	And the transmission is meant to be sent to 'darren@cauthon.com'
	And the transmission content is
	| Subject    | Html                 |
	| Test Email | this is a test email |
	When I send the transmission
	Then it should return a 200

Scenario: Sending a regular email with an attachment
	Given I have a new transmission
	And the transmission is meant to be sent from 'darren@cauthon.com'
	And the transmission is meant to be sent to 'darren@cauthon.com'
	And the transmission has a text file attachment
	And the transmission content is
	| Subject    | Html                 |
	| Test Email | this is a test email |
	When I send the transmission
	Then it should return a 200