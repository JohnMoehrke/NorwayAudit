### Issues


- TODO-unknown-example: some examples did not have defined terms
  - hso:country --> TODO put into agent[user].location
  - hso:scope -- SAML replication of the predicate oauth scope -- TODO define two core extensions audience, and scope (String)
  - patient-consent -- would use the core 
- is it really necessary to slice the OtherId element? Or is it sufficient to just indicate the set of SAML attributes that get assembled in the otherId bucket. The result will look the same, but the modeling would not have slicing to show this.
  - I did not understand the comment on multiple OtherId elements. My question is on if slices need to be defined. This is independent of if there can be multiple instances of OtherId. The idea I am proposing is that the slices are not necessary, given that the various identifiers that would go into OtherId(s) all are self explanatory. The slices do not help with reading an AuditEvent. Slices are used to drive mandatory population. Thus we can explain where to place each identifier from the SAML assertion without defining a slice. One would only define a slice when one kind of these identifiers is mandatory.
- should I define a mapping table? Would be yet-another-place where these tables would go. If they existed on the mapping table, would they be needed elsewhere? Trying to keep them all aligned is hard work.
  - On the structureDefinition page is a "Mapping" tab, that can have a table expressing the mapping of elements. Much like the narrative above. The drawback is that this format of this table is very restricted. The benefit is that some tooling might be able to use it in a computable way.
- purposeOfUse:reason -- is important to preserve. TODO add extension to CodeableConcept to hold reason.
- possibly other "TODO"
- possibly other "?"
- resource:patient-consent-directive  and resource:patient-consent-directive-type
  - should this be modeled the same way IHE models bppc?