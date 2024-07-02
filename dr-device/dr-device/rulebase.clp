(import-rdf "facts.rdf")
		(export-rdf export.rdf  commited_151_st1 commited_151_st2 commited_152_st1 commited_152_st2 commited_152_st3 commited_376_st1 commited_376_st2 commited_376_st3 commited_8_st1 commited_10_st1 kazna_zatvora_min kazna_zatvora_max novcana_kazna_152_st1_min novcana_kazna_152_st1_max sudska_opomena novcana_kazna_8_st1_min kazna_zatvora_cl_151_st2_min kazna_zatvora_cl_151_st2_max kazna_zatvora_cl_152_st2_min kazna_zatvora_cl_152_st2_max kazna_zatvora_cl_376_st2_min kazna_zatvora_cl_376_st2_max kazna_zatvora_cl_376_st3_min kazna_zatvora_cl_376_st3_max novcana_kazna_8_st1_max)
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
	
(defeasiblerule rule_151_st2_1
		 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:zivotna_opasnost "yes")
	) 
  => 
	 
	(commited_151_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_151_st2_2
		 
	(commited_151_st1 
		(
		 defendant ?Defendant)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:trajna_osakacenost "yes")
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
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:javno_mesto "no")
	) 
  => 
	 
	(commited_376_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_376_st2_1
		 
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:is_entity "legal_entity")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:laka_telesna_povreda "yes")
	) 
  => 
	 
	(commited_376_st2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_376_st2_2
		 
	(commited_376_st1 
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
	
(defeasiblerule rule_8_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:provokacija "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:javno_mesto "yes")
	)  
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "individual")
	) 
  => 
	 
	(commited_8_st1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule_10_st1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:provokacija "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:javno_mesto "yes")
	)  
	(lc:case 
		(
		 lc:victim ?Victim)
	
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "legal_entity")
	) 
  => 
	 
	(commited_10_st1 
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
	 
	(kazna_zatvora_cl_151_st2_min 
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
	 
	(kazna_zatvora_cl_151_st2_max 
		(
		 value 96)
	) 
) 
	
(defeasiblerule kazna_cl_151_st2_min
		 
	(commited_151_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_cl_151_st2_min 
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
	 
	(kazna_zatvora_cl_151_st2_max 
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
	 
	(kazna_zatvora_cl_152_st2_min 
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
	 
	(kazna_zatvora_cl_152_st2_max 
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
	 
	(kazna_zatvora_cl_376_st2_min 
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
	 
	(kazna_zatvora_cl_376_st2_max 
		(
		 value 60)
	) 
) 
	
(defeasiblerule kazna_cl_376_st2_min
		 
	(commited_376_st2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_cl_376_st2_min 
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
	 
	(kazna_zatvora_cl_376_st2_max 
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
	 
	(kazna_zatvora_cl_376_st3_min 
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
	 
	(kazna_zatvora_cl_376_st3_max 
		(
		 value 60)
	) 
) 
	
(defeasiblerule kazna_cl_8_st1_min
		 
	(commited_8_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 0)
	) 
) 
	
(defeasiblerule kazna_cl_8_st1_max
		 
	(commited_8_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 1)
	) 
) 
	
(defeasiblerule kazna_cl_8_st1_min_novcana
		 
	(commited_8_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna_8_st1_min 
		(
		 value 3_minimalne_zarade)
	) 
) 
	
(defeasiblerule kazna_cl_8_st1_max_novcana
		 
	(commited_8_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(novcana_kazna_8_st1_max 
		(
		 value 18_minimalnih_zarada)
	) 
) 
	
(defeasiblerule kazna_cl_10_st1_min
		 
	(commited_10_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_min 
		(
		 value 0)
	) 
) 
	
(defeasiblerule kazna_cl_10_st1_max
		 
	(commited_10_st1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(kazna_zatvora_max 
		(
		 value 2)
	) 
) 
	