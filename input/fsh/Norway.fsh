//Alias: $otherId = https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId

Extension: OtherIdName
Title: "AuditEvent.agent other identifiers name"
Description: "Extension to be used within IHE-otherId to carry the name of the identifier."
* ^context[+].type = #element
* ^context[=].expression = "AuditEvent.agent"
* value[x] only string
* valueString 1..1


Profile:        SAMLaccessTokenUseComprehensiveNorway
Parent:         IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive
Id:             IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.Norway
Title:          "Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive Norway"
Description:    """
A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token.

**Builds upon the IHE BALP Comprehensive**
"""
* purposeOfEvent 1..* MS
* purposeOfEvent ^short = "saml hso:purpose and healthcareservice"
* purposeOfEvent ^definition = "Multiple values are recorded, for each set of values from SAML are stored in associated .coding instances. "
* purposeOfEvent.text ^short = "SAML hso:purpose:description"
* purposeOfEvent.coding.code ^short = "SAML hso:purpose:id and healthcareservice:id"
* purposeOfEvent.coding.display ^short = "SAML hso:purpose:name and healthcareservice:name"
* purposeOfEvent.coding.system ^short = "SAML hso:purpose:system and healthcareservice.system"
* agent[user].who.display MS
* agent[user].who.display ^short = "subject:name"
* agent[user].purposeOfUse 1..* MS
* agent[user].purposeOfUse ^short = "saml hso:purpose-local"
* agent[user].purposeOfUse.text ^short = "SAML hso:purpose-local:description"
* agent[user].purposeOfUse.coding.code ^short = "SAML hso:purpose-local:id"
* agent[user].purposeOfUse.coding.display ^short = "SAML hso:purpose-local:name"
* agent[user].purposeOfUse.coding.system ^short = "SAML hso:purpose-local:system"

//extending the agent slicing from BasicAudit
* agent contains 
	user-facility 0..1 and
	user-child-org 0..1 and
	user-department 0..1 and
	user-sub-department 0..1 and
	user-unit 0..1
* agent[user-facility].type = NorwayAgentTypes#user-facility
* agent[user-facility] ^short = "SAML Attributes urn:hso:subject:facility"
* agent[user-facility].who.display 1..1 MS
* agent[user-facility].who.display ^short = "SAML Attribute urn:hso:subject:facility:name"
* agent[user-facility].who.identifier.value 1..1 MS
* agent[user-facility].who.identifier.value ^short = "SAML Attribute urn:hso:subject:facility:id"
* agent[user-facility].who.identifier.system 1..1 MS
* agent[user-facility].who.identifier.system ^short = "SAML Attribute urn:hso:subject:facility:system"
* agent[user-facility].who.identifier.assigner.identifier.value 1..1 MS
* agent[user-facility].who.identifier.assigner.identifier.value ^short = "SAML Attribute urn:hso:subject:facility:assigner"
* agent[user-facility].requestor = false
* agent[user-facility].role 0..0
* agent[user-facility].altId 0..0 // discouraged
* agent[user-facility].name 0..0 
* agent[user-facility].location 0..0 // discouraged as unlikely to be known in this scenario
* agent[user-facility].policy 0..0
* agent[user-facility].media 0..0 // media is physical storage media identification
* agent[user-facility].network 0..0 // users are not network devices
* agent[user-facility].purposeOfUse 0..0

* agent[user-child-org].type = NorwayAgentTypes#user-child-org
* agent[user-child-org] ^short = "SAML Attributes urn:hso:subject:child-organization"
* agent[user-child-org].who.display 0..1 MS
* agent[user-child-org].who.display ^short = "SAML Attribute urn:hso:subject:child-organization:name"
* agent[user-child-org].who.identifier.value 1..1 MS
* agent[user-child-org].who.identifier.value ^short = "SAML Attribute urn:hso:subject:child-organization:id"
* agent[user-child-org].who.identifier.system 1..1 MS
* agent[user-child-org].who.identifier.system ^short = "SAML Attribute urn:hso:subject:child-organization:system"
* agent[user-child-org].who.identifier.assigner.identifier.value 1..1 MS
* agent[user-child-org].who.identifier.assigner.identifier.value ^short = "SAML Attribute urn:hso:subject:child-organization:assigner"
* agent[user-child-org].requestor = false
* agent[user-child-org].role 0..0
* agent[user-child-org].altId 0..0 // discouraged
* agent[user-child-org].name 0..0 
* agent[user-child-org].location 0..0 // discouraged as unlikely to be known in this scenario
* agent[user-child-org].policy 0..0
* agent[user-child-org].media 0..0 // media is physical storage media identification
* agent[user-child-org].network 0..0 // users are not network devices
* agent[user-child-org].purposeOfUse 0..0

* agent[user-department].type = NorwayAgentTypes#user-department
* agent[user-department] ^short = "SAML Attributes urn:hso:subject:department"
* agent[user-department].who.display 1..1 MS
* agent[user-department].who.display ^short = "SAML Attribute urn:hso:subject:department:name"
* agent[user-department].who.identifier.value 1..1 MS
* agent[user-department].who.identifier.value ^short = "SAML Attribute urn:hso:subject:department:id"
* agent[user-department].who.identifier.system 1..1 MS
* agent[user-department].who.identifier.system ^short = "SAML Attribute urn:hso:subject:department:system"
* agent[user-department].who.identifier.assigner.identifier.value 1..1 MS
* agent[user-department].who.identifier.assigner.identifier.value ^short = "SAML Attribute urn:hso:subject:department:assigner"
* agent[user-department].requestor = false
* agent[user-department].role 0..0
* agent[user-department].altId 0..0 // discouraged
* agent[user-department].name 0..0 
* agent[user-department].location 0..0 // discouraged as unlikely to be known in this scenario
* agent[user-department].policy 0..0
* agent[user-department].media 0..0 // media is physical storage media identification
* agent[user-department].network 0..0 // users are not network devices
* agent[user-department].purposeOfUse 0..0

* agent[user-sub-department].type = NorwayAgentTypes#user-sub-department
* agent[user-sub-department] ^short = "SAML Attributes urn:hso:subject:sub-department"
* agent[user-sub-department].who.display 1..1 MS
* agent[user-sub-department].who.display ^short = "SAML Attribute urn:hso:subject:sub-department:name"
* agent[user-sub-department].who.identifier.value 1..1 MS
* agent[user-sub-department].who.identifier.value ^short = "SAML Attribute urn:hso:subject:sub-department:id"
* agent[user-sub-department].who.identifier.system 1..1 MS
* agent[user-sub-department].who.identifier.system ^short = "SAML Attribute urn:hso:subject:sub-department:system"
* agent[user-sub-department].who.identifier.assigner.identifier.value 1..1 MS
* agent[user-sub-department].who.identifier.assigner.identifier.value ^short = "SAML Attribute urn:hso:subject:sub-department:assigner"
* agent[user-sub-department].requestor = false
* agent[user-sub-department].role 0..0
* agent[user-sub-department].altId 0..0 // discouraged
* agent[user-sub-department].name 0..0 
* agent[user-sub-department].location 0..0 // discouraged as unlikely to be known in this scenario
* agent[user-sub-department].policy 0..0
* agent[user-sub-department].media 0..0 // media is physical storage media identification
* agent[user-sub-department].network 0..0 // users are not network devices
* agent[user-sub-department].purposeOfUse 0..0

* agent[user-unit].type = NorwayAgentTypes#user-unit
* agent[user-unit] ^short = "SAML Attributes urn:hso:subject:unit"
* agent[user-unit].who.display 1..1 MS
* agent[user-unit].who.display ^short = "SAML Attribute urn:hso:subject:unit:name"
* agent[user-unit].who.identifier.value 1..1 MS
* agent[user-unit].who.identifier.value ^short = "SAML Attribute urn:hso:subject:unit:id"
* agent[user-unit].who.identifier.system 1..1 MS
* agent[user-unit].who.identifier.system ^short = "SAML Attribute urn:hso:subject:unit:system"
* agent[user-unit].who.identifier.assigner.identifier.value 1..1 MS
* agent[user-unit].who.identifier.assigner.identifier.value ^short = "SAML Attribute urn:hso:subject:unit:assigner"
* agent[user-unit].requestor = false
* agent[user-unit].role 0..0
* agent[user-unit].altId 0..0 // discouraged
* agent[user-unit].name 0..0 
* agent[user-unit].location 0..0 // discouraged as unlikely to be known in this scenario
* agent[user-unit].policy 0..0
* agent[user-unit].media 0..0 // media is physical storage media identification
* agent[user-unit].network 0..0 // users are not network devices
* agent[user-unit].purposeOfUse 0..0

// extending the otherId slicing from BasicAudit
* agent[user].extension[otherId] contains 
	qualifications 0..1 and
	personal 0..1 and
	application-session 0..1
* agent[user].extension[otherId][qualifications].valueIdentifier.type = NorwayIdentifierTypes#qualification
* agent[user].extension[otherId][qualifications].valueIdentifier.system 1..1 MS
* agent[user].extension[otherId][qualifications].valueIdentifier.system ^short = "subject:qualification:system"
* agent[user].extension[otherId][qualifications].valueIdentifier.value 1..1 MS
* agent[user].extension[otherId][qualifications].valueIdentifier.value ^short = "subject:qualification:id"
* agent[user].extension[otherId][qualifications].valueIdentifier.extension contains OtherIdName named otherIdName 0..1 MS
//* agent[user].extension[otherId][qualifications].valueIdentifier.extension[otherIdName].valueString 0..1 MS
* agent[user].extension[otherId][qualifications].valueIdentifier.extension[otherIdName] ^short = "subject:qualification:name"
* agent[user].extension[otherId][qualifications].valueIdentifier.assigner.identifier.value 1..1 MS
* agent[user].extension[otherId][qualifications].valueIdentifier.assigner.identifier.value ^short = "subject:qualification:assigner"
* agent[user].extension[otherId][qualifications] ^short = "subject:qualification"
* agent[user].extension[otherId][personal].valueIdentifier.type = NorwayIdentifierTypes#national-identifier
* agent[user].extension[otherId][personal].valueIdentifier.system 1..1 MS
* agent[user].extension[otherId][personal].valueIdentifier.system ^short = "subject:national-identifier:system"
* agent[user].extension[otherId][personal].valueIdentifier.value 1..1 MS
* agent[user].extension[otherId][personal].valueIdentifier.value ^short = "subject:national-identifier:id"
* agent[user].extension[otherId][personal].valueIdentifier.extension contains OtherIdName named otherIdName 0..1 MS
//* agent[user].extension[otherId][personal].valueIdentifier.extension[otherIdName].valueString 0..1 MS
* agent[user].extension[otherId][personal].valueIdentifier.extension[otherIdName] ^short = "subject:national-identifier:name"
* agent[user].extension[otherId][personal].valueIdentifier.assigner.identifier.value 1..1 MS
* agent[user].extension[otherId][personal].valueIdentifier.assigner.identifier.value ^short = "subject:national-identifier:assigner"
* agent[user].extension[otherId][personal] ^short = "subject:national-identifier"
* agent[user].extension[otherId][application-session].valueIdentifier.type = NorwayIdentifierTypes#application-session
* agent[user].extension[otherId][application-session].valueIdentifier.system 1..1 MS
* agent[user].extension[otherId][application-session].valueIdentifier.system ^short = "subject:appplication-session:system"
* agent[user].extension[otherId][application-session].valueIdentifier.value 1..1 MS
* agent[user].extension[otherId][application-session].valueIdentifier.value ^short = "subject:application-session:id"
* agent[user].extension[otherId][application-session] ^short = "subject:application-session"
* agent[user].extension[otherId][application-session] ^definition = "The application-session is a process identification value for the user session. It is used to coorelate the activities to that session."

//* entity ^slicing.discriminator.type = #type
//* entity ^slicing.discriminator.path = "type"
//* entity ^slicing.rules = #open
* entity 1..*
* entity contains 
    patient 1..1 
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[patient].lifecycle 0..0 
* entity[patient].securityLabel 0..0
* entity[patient].name 0..0
* entity[patient].query 0..0
* entity[patient].detail 0..0


CodeSystem: NorwayIdentifierTypes
Title: "OtherId types for Norway Identifiers"
Description: "These are additional details about the User asserted in the Token. These are considered part of the agency of the transaction, so each are described in their own .agent element. These are mostly derived off of the SAML attribute name. The code display name is the SAML attribute name."
* ^caseSensitive = false
* ^experimental = false
* #qualification "urn:hso:subject:qualification:id"
* #national-identifier "urn:hso:subject:national-identifier:id"
* #application-session "urn:hso:subject:application-session"


CodeSystem: NorwayAgentTypes
Title: "Agent types for Norway Tokens"
Description: "These are additional details about the Agents asserted in the Token. These are considered part of the agency of the transaction, so each are described in their own .agent element. These are mostly derived off of the SAML attribute name. The code display name is the SAML attribute name."
* ^caseSensitive = false
* ^experimental = false
* #user-facility "urn:hso:subject:facility"
* #user-child-org "urn:hso:subject:child-organization"
* #user-department "urn:hso:subject:department"
* #user-sub-department  "urn:hso:subject:sub-department"
* #user-unit "urn:hso:subject:unit"

CodeSystem: NorwayEntityDetailTypes
Title: "Entity detail types for Norway SAML Token"
Description: "These are additionl details about the Patient (Resoruce) mentioned in the Token. These are not .agent, as they don't actively participate. They are provided to provide context about the Patient. These are used in the entity.detail as the detail.type, where the value carried in the Token is carried in the detail.value[x]. These are mostly derived off of the SAML attribute name. The code display name is the SAML attribute name."
* ^caseSensitive = false
* ^experimental = false
* #patient-child-organization-id "hso:resource:child-organization:id"
* #patient-child-organization-name  "hso:resource:child-organization:name"
* #patient-child-organization-system  "hso:resource:child-organization:system"
* #patient-facility-id "urn:hso:resource:facility:id"
* #patient-facility-name  "urn:hso:resource:facility:name"
* #patient-facility-system  "urn:hso:resource:facility:system"



Instance: ex-auditPoke-Norway
InstanceOf: SAMLaccessTokenUseComprehensiveNorway
Title: "Audit Example of a Norway SAML access token of comprehensive"
Description: """
Example AuditEvent showing just the Norway comprehensive SAML access token. The event being recorded is a theoretical **poke** (not intended to represent anything useful).

Comprehensive is different than Minimal in that it presumes that when the AuditEvent is used, the appropriate use of the AuditEvent does not have access to the SAML Idenity Provider (IDP), or that the IDP may have forgotten about the issued ID.

**Builds upon the Minimal**

SAML | example value |
-----|-----|
Subject.NameID  | "05086900124" 
Issuer | "https://sts.sykehuspartner.no" 
ID | "XC4WdYS0W5bjsMGc5Ue6tClD_5U" 
healthcareservice | https://volven.no 8655#S08 "Anestesiologi/smertebehandling"
hso:purpose:id | "1"
hso:purpose:name | N/A
hso:purpose:system | "1.0.14265.1"
hso:purpose:descrption | "Oppslag via kjernejournal, helsehjelp"
hso:purpose:assigner | "http://dips.com"
hso:purpose-local:id | "KONSSERIE"
hso:purpose-local:name | "Åpen konsultasjonsserie"
hso:purpose-local:system | "http://dips.com/beslutningsmal"
hso:purpose-local:descrption | "Åpen konsultasjonsserie til Barn og unges psykiske helse på sykehus, Barn og unges psykiske helse på sykehus, serie starttidspunkt 28.10.2014"
hso:purpose-local:assigner | "https://www.iso.org/standard/54547.html"
hso:purpose-local:userSelected | False
subject:qualification:id | "222200068"
subject:qualification:name | "BEN PSA REDDIK"
subject:qualification:system | "2.16.578.1.12.4.1.4.4"
subject:qualification:assigner | "https://register.helsedirektoratet.no/hpr"
application-session | http://dips.com/session_id_hash#3840231262
functional-role | urn:oid:2.16.578.1.12.4.3.1.40.5.1#Overlege "Overlege"
role | https://www.sykehuspartner.no urn:oid:2.16.578.1.12.4.3.1.40.5.3#1035
qualification-role | http://www.volven.no urn:oid:2.16.578.1.12.4.1.1.9060#LE "Lege"
**nationalidentifiers** | 
subject:national-identifier:id | "05086900124"
subject:national-identifier:name | "BEN PSA REDDIK"
subject:national-identifier:system | "urn:oid:2.16.578.1.12.4.1.4.1"
subject:national-identifier:assigner | "https://www.skatteetaten.no/person/folkeregister/"
**subject-assurance** | 
subject:assurance-level:id | "4"
subject:assurance-level:name | ""
subject:assurance-level:system | "https://begrep.difi.no/Felles/sikkerhetsnivaa"
subject:assurance-level:assigner | "https://www.digdir.no/" (Not saved)
**organization** | 
subject:organization-id:  | "993467049"
subject:organization-name | "GLØSHAUGEN LEGESENTER DA"
subject:organization-system | "2.16.578.1.12.4.1.4.101"
subject:organization-assigner | "Brønnøysundregistrene"
**child-organization** | 
subject:child-organization-id | "874716782"
subject:child-organization-name | ""
subject:child-organization-system | "urn:oid:2.16.578.1.12.4.1.101"
subject:child-organization-assigner | https://www.brreg.no/
**facility** | 
subject:facility-id | "705592"
subject:facility-name | "RSH"
subject:facility-system | "2.16.578.1.12.4.1.4.102"
subject:facility-assigner | "https://volven.no"
**Patient** | 
resource:id | "12057900499"
resource:name | ????
resource:system | "2.16.578.1.12.4.1.4.1"
resource:assigner | "https://www.skatteetaten.no/person/folkeregister/"

**TODO-examples to be brought into the model**

Key | example value
-----|-----
homecommunity:id | 2.16.578.1.12.4.1.7.1.1
country | NO
scope | "patient/Document.read"
"""
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = DCM#110100 "Application Activity"
* action = #R
* subtype = urn:ietf:rfc:1438#poke "Boredom poke"
//* severity = #Informational
* recorded = 2021-12-03T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* purposeOfEvent[+].coding.system = "https://volven.no"
* purposeOfEvent[=].coding.code = "8655\#S08" 
* purposeOfEvent[=].coding.display = "Anestesiologi/smertebehandling"
* purposeOfEvent[+].coding = urn:oid:1.0.14265.1#1
* purposeOfEvent.text = "Oppslag via kjernejournal, helsehjelp"
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-device)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[user].type.coding[+] =  https://profiles.ihe.net/ITI/basicaudit/CodeSystem/UserAgentTypes#UserSamlAgent
* agent[user].type.coding[+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP "information recipient"
* agent[user].who.identifier.value = "05086900124"
* agent[user].who.identifier.system = "https://sts.sykehuspartner.no"
* agent[user].policy = "XC4WdYS0W5bjsMGc5Ue6tClD_5U"
* agent[user].purposeOfUse.coding = http://dips.com/beslutningsmal#KONSSERIE "Åpen konsultasjonsserie"
* agent[user].purposeOfUse.text = "Åpen konsultasjonsserie til Barn og unges psykiske helse på sykehus, Barn og unges psykiske helse på sykehus, serie starttidspunkt 28.10.2014"
* agent[user].purposeOfUse.coding.userSelected = false
* agent[user].requestor = true
* agent[user].extension[assuranceLevel].valueCodeableConcept = https://begrep.difi.no/Felles/sikkerhetsnivaa#4
//TODO This throws an error in validation that I can't figure out https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/slicing.20an.20extension.20on.20a.20slice
* agent[user].extension[otherId][+].valueIdentifier.type = https://profiles.ihe.net/ITI/basicaudit/CodeSystem/OtherIdentifierTypes#SAML-subject-id
* agent[user].extension[otherId][=].valueIdentifier.value = "JohnDoe"
* agent[user].extension[otherId][+].valueIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* agent[user].extension[otherId][=].valueIdentifier.value = "1234567@myNPIregistry.example.org"
* agent[user].extension[otherId][+].valueIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* agent[user].extension[otherId][=].valueIdentifier.value = "JohnD"

* agent[user].role[+] = urn:oid:2.16.578.1.12.4.3.1.40.5.1#Overlege "Overlege"
* agent[user].role[+] = urn:oid:2.16.578.1.12.4.3.1.40.5.3#1035
* agent[user].role[+] = urn:oid:2.16.578.1.12.4.1.1.9060#LE "Lege"

* agent[userorg].type = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV "healthcare provider"
* agent[userorg].who.display = "GLØSHAUGEN LEGESENTER DA"
* agent[userorg].who.identifier.value = "993467049"
* agent[userorg].who.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.101"
* agent[userorg].who.identifier.assigner.identifier.value = "Brønnøysundregistrene"
* agent[userorg].requestor = false

* agent[user].extension[otherId][qualifications].valueIdentifier.type = NorwayIdentifierTypes#qualification
* agent[user].extension[otherId][qualifications].valueIdentifier.system = "urn:oid:2.16.578.1.12.4.1.4.4"
* agent[user].extension[otherId][qualifications].valueIdentifier.value = "222200068"
//todo * agent[user].extension[otherId][qualifications].valueIdentifier.extension[otherIdName].valueString = "BEN PSA REDDIK"
* agent[user].extension[otherId][qualifications].valueIdentifier.assigner.identifier.value = "https://register.helsedirektoratet.no/hpr"
* agent[user].extension[otherId][personal].valueIdentifier.type = NorwayIdentifierTypes#national-identifier
* agent[user].extension[otherId][personal].valueIdentifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* agent[user].extension[otherId][personal].valueIdentifier.value = "05086900124"
//todo * agent[user].extension[otherId][personal].valueIdentifier.extension[otherIdName].valueString = "BEN PSA REDDIK"
* agent[user].extension[otherId][personal].valueIdentifier.assigner.identifier.value = "https://www.skatteetaten.no/person/folkeregister/"
* agent[user].extension[otherId][application-session].valueIdentifier.type = NorwayIdentifierTypes#application-session
* agent[user].extension[otherId][application-session].valueIdentifier.system = "http://dips.com/session_id_hash"
* agent[user].extension[otherId][application-session].valueIdentifier.value = "3840231262"

* agent[user-child-org].type = NorwayAgentTypes#user-child-org
* agent[user-child-org].who.identifier.value = "874716782"
* agent[user-child-org].who.identifier.system =  "urn:oid:2.16.578.1.12.4.1.101"
* agent[user-child-org].who.identifier.assigner.identifier.value =  "https://www.brreg.no/"
* agent[user-child-org].requestor = false

* agent[user-facility].type = NorwayAgentTypes#user-facility
* agent[user-facility].who.identifier.value = "705592"
* agent[user-facility].who.display = "RSH"
* agent[user-facility].who.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.102"
* agent[user-facility].who.identifier.assigner.identifier.value = "https://volven.no"
* agent[user-facility].requestor = false

* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what.type = 	http://hl7.org/fhir/resource-types#Patient
* entity[patient].what.identifier.value = "12057900499"
* entity[patient].what.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* entity[patient].what.identifier.assigner.identifier.value = "https://www.skatteetaten.no/person/folkeregister/"




Instance: Dr-SAML-norway
InstanceOf: DocumentReference
Title: "Norway SAML example in DocumentReference"
Description: "DocumentReference of Norway SAML example."
* status = #current
* content.attachment.id = "ig-loader-xca-kj-token-20211111.txt"
* content.attachment.contentType = #application/xml
* context.related = Reference(AuditEvent/ex-auditPoke-Norway)

Instance: SAML-JK-norway
InstanceOf: DocumentReference
Title: "Norway SAML second example in DocumentReference"
Description: "DocumentReference of Norway second SAML example."
* status = #current
* content.attachment.id = "ig-loader-SAML_KJ_20220203.txt"
* content.attachment.contentType = #application/xml
//* context.related = Reference(AuditEvent/ex-auditPoke-Norway)

