(import-rdf "facts.rdf")
		(export-rdf export.rdf  commited_151_st1 commited_151_st2 commited_152_st1 commited_152_st2 commited_152_st3 commited_376_st1 commited_376_st2 commited_376_st3 kazna_zatvora_min kazna_zatvora_max novcana_kazna_152_st1_min novcana_kazna_152_st1_max)
		(export-proof proof.ruleml)
		
(defeasiblerule rule_151_st1
		 
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:is_entity "individual")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:teska_telesna_povreda "yes")
	) 
  => 
	 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_151_st2
		 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(commited_151_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_152_st1
		 
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:is_entity "individual")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:laka_telesna_povreda "yes")
	) 
  => 
	 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_152_st2
		 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:korisceno_oruzje "yes")
	) 
  => 
	 
	(commited_152_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_152_st3
		 
	(commited_152_st2 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:provokacija "yes")
	) 
  => 
	 
	(commited_152_st3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_376_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:napad_ili_pretnja "yes")
	)  
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:is_entity "legal_entity")
	) 
  => 
	 
	(commited_376_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_376_st2
		 
	(commited_376_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(commited_376_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_376_st3
		 
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "special_legal_entity")
	) 
  => 
	 
	(commited_376_st3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule kazna_cl_151_st1_min
		 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 6)
	) 
) 
	
(defeasiblerule kazna_cl_151_st1_max
		 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 60)
	) 
) 
	
(defeasiblerule kazna_cl_151_st2_min
		 
	(commited_151_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 12)
	) 
) 
	
(defeasiblerule kazna_cl_151_st2_max
		 
	(commited_151_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 96)
	) 
) 
	
(defeasiblerule kazna_cl_152_st1_min
		 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 0)
	) 
) 
	
(defeasiblerule kazna_cl_152_st1_max
		 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 12)
	) 
) 
	
(defeasiblerule kazna_cl_152_st1_min_novcana
		 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna_152_st1_min 
		(
		 value 600)
	) 
) 
	
(defeasiblerule kazna_cl_152_st1_max_novcana
		 
	(commited_152_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna_152_st1_max 
		(
		 value 8000)
	) 
) 
	
(defeasiblerule kazna_cl_152_st2_min
		 
	(commited_152_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 0)
	) 
) 
	
(defeasiblerule kazna_cl_152_st2_max
		 
	(commited_152_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 36)
	) 
) 
	
(defeasiblerule kazna_cl_152_st3
		 
	(commited_152_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(sudska_opomena 
		(
		 value 1)
	) 
) 
	
(defeasiblerule kazna_cl_376_st1_min
		 
	(commited_376_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 0)
	) 
) 
	
(defeasiblerule kazna_cl_376_st1_max
		 
	(commited_376_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 36)
	) 
) 
	
(defeasiblerule kazna_cl_376_st2_min
		 
	(commited_376_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 3)
	) 
) 
	
(defeasiblerule kazna_cl_376_st2_max
		 
	(commited_376_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 60)
	) 
) 
	
(defeasiblerule kazna_cl_376_st3_min
		 
	(commited_376_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 6)
	) 
) 
	
(defeasiblerule kazna_cl_376_st3_max
		 
	(commited_376_st3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 60)
	) 
) 
	