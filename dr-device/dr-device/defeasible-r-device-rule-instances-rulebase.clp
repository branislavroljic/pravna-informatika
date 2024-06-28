([rule_151_st1] of defeasible-rule
   (rule-name rule_151_st1)
   (original-rule "rule_151_st1 ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) => ( commited_151_st1 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_151_st1)
   (negated no)
   (superior)
   (deductive-rule rule_151_st1-deductive)
   (overruled-rule rule_151_st1-overruled)
   (system no)
   (support-rule rule_151_st1-support)
   (defeasibly-rule rule_151_st1-defeasibly)
   (defeated-rule nil))

([rule_151_st2] of defeasible-rule
   (rule-name rule_151_st2)
   (original-rule "rule_151_st2 ( commited_151_st1 ( defendant ?Defendant ) ) => ( commited_151_st2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_151_st2)
   (negated no)
   (superior)
   (deductive-rule rule_151_st2-deductive)
   (overruled-rule rule_151_st2-overruled)
   (system no)
   (support-rule rule_151_st2-support)
   (defeasibly-rule rule_151_st2-defeasibly)
   (defeated-rule nil))

([rule_152_st1] of defeasible-rule
   (rule-name rule_152_st1)
   (original-rule "rule_152_st1 ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) => ( commited_152_st1 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_152_st1)
   (negated no)
   (superior)
   (deductive-rule rule_152_st1-deductive)
   (overruled-rule rule_152_st1-overruled)
   (system no)
   (support-rule rule_152_st1-support)
   (defeasibly-rule rule_152_st1-defeasibly)
   (defeated-rule nil))

([rule_152_st2] of defeasible-rule
   (rule-name rule_152_st2)
   (original-rule "rule_152_st2 ( commited_152_st1 ( defendant ?Defendant ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) => ( commited_152_st2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_152_st2)
   (negated no)
   (superior)
   (deductive-rule rule_152_st2-deductive)
   (overruled-rule rule_152_st2-overruled)
   (system no)
   (support-rule rule_152_st2-support)
   (defeasibly-rule rule_152_st2-defeasibly)
   (defeated-rule nil))

([rule_152_st3] of defeasible-rule
   (rule-name rule_152_st3)
   (original-rule "rule_152_st3 ( commited_152_st2 ( defendant ?Defendant ) ) ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) => ( commited_152_st3 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_152_st3)
   (negated no)
   (superior)
   (deductive-rule rule_152_st3-deductive)
   (overruled-rule rule_152_st3-overruled)
   (system no)
   (support-rule rule_152_st3-support)
   (defeasibly-rule rule_152_st3-defeasibly)
   (defeated-rule nil))

([rule_376_st1] of defeasible-rule
   (rule-name rule_376_st1)
   (original-rule "rule_376_st1 ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) => ( commited_376_st1 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_376_st1)
   (negated no)
   (superior)
   (deductive-rule rule_376_st1-deductive)
   (overruled-rule rule_376_st1-overruled)
   (system no)
   (support-rule rule_376_st1-support)
   (defeasibly-rule rule_376_st1-defeasibly)
   (defeated-rule nil))

([rule_376_st2] of defeasible-rule
   (rule-name rule_376_st2)
   (original-rule "rule_376_st2 ( commited_376_st1 ( defendant ?Defendant ) ) => ( commited_376_st2 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_376_st2)
   (negated no)
   (superior)
   (deductive-rule rule_376_st2-deductive)
   (overruled-rule rule_376_st2-overruled)
   (system no)
   (support-rule rule_376_st2-support)
   (defeasibly-rule rule_376_st2-defeasibly)
   (defeated-rule nil))

([rule_376_st3] of defeasible-rule
   (rule-name rule_376_st3)
   (original-rule "rule_376_st3 ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) => ( commited_376_st3 ( defendant ?Defendant ) )")
   (condition-classes)
   (conclusion-class commited_376_st3)
   (negated no)
   (superior)
   (deductive-rule rule_376_st3-deductive)
   (overruled-rule rule_376_st3-overruled)
   (system no)
   (support-rule rule_376_st3-support)
   (defeasibly-rule rule_376_st3-defeasibly)
   (defeated-rule nil))

([kazna_cl_151_st1_min] of defeasible-rule
   (rule-name kazna_cl_151_st1_min)
   (original-rule "kazna_cl_151_st1_min ( commited_151_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_151_st1_min-deductive)
   (overruled-rule kazna_cl_151_st1_min-overruled)
   (system no)
   (support-rule kazna_cl_151_st1_min-support)
   (defeasibly-rule kazna_cl_151_st1_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_151_st1_max] of defeasible-rule
   (rule-name kazna_cl_151_st1_max)
   (original-rule "kazna_cl_151_st1_max ( commited_151_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_151_st1_max-deductive)
   (overruled-rule kazna_cl_151_st1_max-overruled)
   (system no)
   (support-rule kazna_cl_151_st1_max-support)
   (defeasibly-rule kazna_cl_151_st1_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_151_st2_min] of defeasible-rule
   (rule-name kazna_cl_151_st2_min)
   (original-rule "kazna_cl_151_st2_min ( commited_151_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 12 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_151_st2_min-deductive)
   (overruled-rule kazna_cl_151_st2_min-overruled)
   (system no)
   (support-rule kazna_cl_151_st2_min-support)
   (defeasibly-rule kazna_cl_151_st2_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_151_st2_max] of defeasible-rule
   (rule-name kazna_cl_151_st2_max)
   (original-rule "kazna_cl_151_st2_max ( commited_151_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 96 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_151_st2_max-deductive)
   (overruled-rule kazna_cl_151_st2_max-overruled)
   (system no)
   (support-rule kazna_cl_151_st2_max-support)
   (defeasibly-rule kazna_cl_151_st2_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st1_min] of defeasible-rule
   (rule-name kazna_cl_152_st1_min)
   (original-rule "kazna_cl_152_st1_min ( commited_152_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st1_min-deductive)
   (overruled-rule kazna_cl_152_st1_min-overruled)
   (system no)
   (support-rule kazna_cl_152_st1_min-support)
   (defeasibly-rule kazna_cl_152_st1_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st1_max] of defeasible-rule
   (rule-name kazna_cl_152_st1_max)
   (original-rule "kazna_cl_152_st1_max ( commited_152_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 12 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st1_max-deductive)
   (overruled-rule kazna_cl_152_st1_max-overruled)
   (system no)
   (support-rule kazna_cl_152_st1_max-support)
   (defeasibly-rule kazna_cl_152_st1_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st1_min_novcana] of defeasible-rule
   (rule-name kazna_cl_152_st1_min_novcana)
   (original-rule "kazna_cl_152_st1_min_novcana ( commited_152_st1 ( defendant ?Defendant ) ) => ( novcana_kazna_152_st1_min ( value 600 ) )")
   (condition-classes)
   (conclusion-class novcana_kazna_152_st1_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st1_min_novcana-deductive)
   (overruled-rule kazna_cl_152_st1_min_novcana-overruled)
   (system no)
   (support-rule kazna_cl_152_st1_min_novcana-support)
   (defeasibly-rule kazna_cl_152_st1_min_novcana-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st1_max_novcana] of defeasible-rule
   (rule-name kazna_cl_152_st1_max_novcana)
   (original-rule "kazna_cl_152_st1_max_novcana ( commited_152_st1 ( defendant ?Defendant ) ) => ( novcana_kazna_152_st1_max ( value 8000 ) )")
   (condition-classes)
   (conclusion-class novcana_kazna_152_st1_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st1_max_novcana-deductive)
   (overruled-rule kazna_cl_152_st1_max_novcana-overruled)
   (system no)
   (support-rule kazna_cl_152_st1_max_novcana-support)
   (defeasibly-rule kazna_cl_152_st1_max_novcana-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st2_min] of defeasible-rule
   (rule-name kazna_cl_152_st2_min)
   (original-rule "kazna_cl_152_st2_min ( commited_152_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st2_min-deductive)
   (overruled-rule kazna_cl_152_st2_min-overruled)
   (system no)
   (support-rule kazna_cl_152_st2_min-support)
   (defeasibly-rule kazna_cl_152_st2_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st2_max] of defeasible-rule
   (rule-name kazna_cl_152_st2_max)
   (original-rule "kazna_cl_152_st2_max ( commited_152_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st2_max-deductive)
   (overruled-rule kazna_cl_152_st2_max-overruled)
   (system no)
   (support-rule kazna_cl_152_st2_max-support)
   (defeasibly-rule kazna_cl_152_st2_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_152_st3] of defeasible-rule
   (rule-name kazna_cl_152_st3)
   (original-rule "kazna_cl_152_st3 ( commited_152_st3 ( defendant ?Defendant ) ) => ( sudska_opomena ( value 1 ) )")
   (condition-classes)
   (conclusion-class sudska_opomena)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_152_st3-deductive)
   (overruled-rule kazna_cl_152_st3-overruled)
   (system no)
   (support-rule kazna_cl_152_st3-support)
   (defeasibly-rule kazna_cl_152_st3-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st1_min] of defeasible-rule
   (rule-name kazna_cl_376_st1_min)
   (original-rule "kazna_cl_376_st1_min ( commited_376_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st1_min-deductive)
   (overruled-rule kazna_cl_376_st1_min-overruled)
   (system no)
   (support-rule kazna_cl_376_st1_min-support)
   (defeasibly-rule kazna_cl_376_st1_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st1_max] of defeasible-rule
   (rule-name kazna_cl_376_st1_max)
   (original-rule "kazna_cl_376_st1_max ( commited_376_st1 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st1_max-deductive)
   (overruled-rule kazna_cl_376_st1_max-overruled)
   (system no)
   (support-rule kazna_cl_376_st1_max-support)
   (defeasibly-rule kazna_cl_376_st1_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st2_min] of defeasible-rule
   (rule-name kazna_cl_376_st2_min)
   (original-rule "kazna_cl_376_st2_min ( commited_376_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 3 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st2_min-deductive)
   (overruled-rule kazna_cl_376_st2_min-overruled)
   (system no)
   (support-rule kazna_cl_376_st2_min-support)
   (defeasibly-rule kazna_cl_376_st2_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st2_max] of defeasible-rule
   (rule-name kazna_cl_376_st2_max)
   (original-rule "kazna_cl_376_st2_max ( commited_376_st2 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st2_max-deductive)
   (overruled-rule kazna_cl_376_st2_max-overruled)
   (system no)
   (support-rule kazna_cl_376_st2_max-support)
   (defeasibly-rule kazna_cl_376_st2_max-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st3_min] of defeasible-rule
   (rule-name kazna_cl_376_st3_min)
   (original-rule "kazna_cl_376_st3_min ( commited_376_st3 ( defendant ?Defendant ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_min)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st3_min-deductive)
   (overruled-rule kazna_cl_376_st3_min-overruled)
   (system no)
   (support-rule kazna_cl_376_st3_min-support)
   (defeasibly-rule kazna_cl_376_st3_min-defeasibly)
   (defeated-rule nil))

([kazna_cl_376_st3_max] of defeasible-rule
   (rule-name kazna_cl_376_st3_max)
   (original-rule "kazna_cl_376_st3_max ( commited_376_st3 ( defendant ?Defendant ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (condition-classes)
   (conclusion-class kazna_zatvora_max)
   (negated no)
   (superior)
   (deductive-rule kazna_cl_376_st3_max-deductive)
   (overruled-rule kazna_cl_376_st3_max-overruled)
   (system no)
   (support-rule kazna_cl_376_st3_max-support)
   (defeasibly-rule kazna_cl_376_st3_max-defeasibly)
   (defeated-rule nil))
