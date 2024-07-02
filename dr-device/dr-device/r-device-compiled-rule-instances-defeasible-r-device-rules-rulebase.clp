([kazna_cl_10_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-defeasibly-dot-gen443)
   (depends-on declare kazna_zatvora_max commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_10_st1_max] ) ) ) ?gen400 <- ( kazna_zatvora_max ( value 2 ) ( positive 1 ) ( positive-derivator kazna_cl_10_st1_max $? ) ) ( test ( eq ( class ?gen400 ) kazna_zatvora_max ) ) ( not ( and ?gen407 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ kazna_cl_10_st1_max $?gen402 ) ) ) ) ) ) => ?gen400 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_10_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-defeasibly-gen445)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_10_st1_max] ) ) ) ?gen407 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( kazna_zatvora_max ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ kazna_cl_10_st1_max $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) kazna_zatvora_max ) ) => ?gen400 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_10_st1_max ?gen407 ) )"))

([kazna_cl_10_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-overruled-dot-gen447)
   (depends-on declare kazna_zatvora_max commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_10_st1_max] ) ) ) ?gen400 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( subseq-pos ( create$ kazna_cl_10_st1_max-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( test ( eq ( class ?gen400 ) kazna_zatvora_max ) ) ( not ( and ?gen407 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( kazna_zatvora_max ( positive-defeated $?gen402 & : ( not ( member$ kazna_cl_10_st1_max $?gen402 ) ) ) ) ) ) => ( calc ( bind $?gen405 ( delete-member$ $?gen404 ( create$ kazna_cl_10_st1_max-overruled $?gen403 ) ) ) ) ?gen400 <- ( kazna_zatvora_max ( negative-overruled $?gen405 ) )"))

([kazna_cl_10_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-overruled-gen449)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_10_st1_max] ) ) ) ?gen407 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_max-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( positive-defeated $?gen402 & : ( not ( member$ kazna_cl_10_st1_max $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen405 ( create$ kazna_cl_10_st1_max-overruled $?gen403 $?gen404 ) ) ) ?gen400 <- ( kazna_zatvora_max ( negative-overruled $?gen405 ) )"))

([kazna_cl_10_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-support-gen451)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_10_st1_max] ) ) ) ?gen399 <- ( commited_10_st1 ( defendant ?Defendant ) ) ?gen400 <- ( kazna_zatvora_max ( value 2 ) ( positive-support $?gen402 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_max ?gen399 $$$ $?gen402 ) ) ) ) ) ( test ( eq ( class ?gen400 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen405 ( create$ kazna_cl_10_st1_max ?gen399 $?gen402 ) ) ) ?gen400 <- ( kazna_zatvora_max ( positive-support $?gen405 ) )"))

([kazna_cl_10_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-defeasibly-dot-gen453)
   (depends-on declare kazna_zatvora_min commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_10_st1_min] ) ) ) ?gen391 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_10_st1_min $? ) ) ( test ( eq ( class ?gen391 ) kazna_zatvora_min ) ) ( not ( and ?gen398 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ kazna_cl_10_st1_min $?gen393 ) ) ) ) ) ) => ?gen391 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_10_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-defeasibly-gen455)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_10_st1_min] ) ) ) ?gen398 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ kazna_cl_10_st1_min $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) kazna_zatvora_min ) ) => ?gen391 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_10_st1_min ?gen398 ) )"))

([kazna_cl_10_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-overruled-dot-gen457)
   (depends-on declare kazna_zatvora_min commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_10_st1_min] ) ) ) ?gen391 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( subseq-pos ( create$ kazna_cl_10_st1_min-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( test ( eq ( class ?gen391 ) kazna_zatvora_min ) ) ( not ( and ?gen398 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( kazna_zatvora_min ( positive-defeated $?gen393 & : ( not ( member$ kazna_cl_10_st1_min $?gen393 ) ) ) ) ) ) => ( calc ( bind $?gen396 ( delete-member$ $?gen395 ( create$ kazna_cl_10_st1_min-overruled $?gen394 ) ) ) ) ?gen391 <- ( kazna_zatvora_min ( negative-overruled $?gen396 ) )"))

([kazna_cl_10_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-overruled-gen459)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_10_st1_min] ) ) ) ?gen398 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_min-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( positive-defeated $?gen393 & : ( not ( member$ kazna_cl_10_st1_min $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen396 ( create$ kazna_cl_10_st1_min-overruled $?gen394 $?gen395 ) ) ) ?gen391 <- ( kazna_zatvora_min ( negative-overruled $?gen396 ) )"))

([kazna_cl_10_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-support-gen461)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_10_st1_min] ) ) ) ?gen390 <- ( commited_10_st1 ( defendant ?Defendant ) ) ?gen391 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen393 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_min ?gen390 $$$ $?gen393 ) ) ) ) ) ( test ( eq ( class ?gen391 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen396 ( create$ kazna_cl_10_st1_min ?gen390 $?gen393 ) ) ) ?gen391 <- ( kazna_zatvora_min ( positive-support $?gen396 ) )"))

([kazna_cl_8_st1_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-defeasibly-dot-gen463)
   (depends-on declare novcana_kazna_8_st1_max commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max_novcana $? ) ) ( test ( eq ( class ?gen382 ) novcana_kazna_8_st1_max ) ) ( not ( and ?gen389 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen384 ) ) ) ) ) ) => ?gen382 <- ( novcana_kazna_8_st1_max ( positive 0 ) )"))

([kazna_cl_8_st1_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-defeasibly-gen465)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen389 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) novcana_kazna_8_st1_max ) ) => ?gen382 <- ( novcana_kazna_8_st1_max ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max_novcana ?gen389 ) )"))

([kazna_cl_8_st1_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-overruled-dot-gen467)
   (depends-on declare novcana_kazna_8_st1_max commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( test ( eq ( class ?gen382 ) novcana_kazna_8_st1_max ) ) ( not ( and ?gen389 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( positive-defeated $?gen384 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen384 ) ) ) ) ) ) => ( calc ( bind $?gen387 ( delete-member$ $?gen386 ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen385 ) ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( negative-overruled $?gen387 ) )"))

([kazna_cl_8_st1_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-overruled-gen469)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen389 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( positive-defeated $?gen384 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) novcana_kazna_8_st1_max ) ) => ( calc ( bind $?gen387 ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen385 $?gen386 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( negative-overruled $?gen387 ) )"))

([kazna_cl_8_st1_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-support-gen471)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen381 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive-support $?gen384 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana ?gen381 $$$ $?gen384 ) ) ) ) ) ( test ( eq ( class ?gen382 ) novcana_kazna_8_st1_max ) ) => ( calc ( bind $?gen387 ( create$ kazna_cl_8_st1_max_novcana ?gen381 $?gen384 ) ) ) ?gen382 <- ( novcana_kazna_8_st1_max ( positive-support $?gen387 ) )"))

([kazna_cl_8_st1_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-defeasibly-dot-gen473)
   (depends-on declare novcana_kazna_8_st1_min commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min_novcana $? ) ) ( test ( eq ( class ?gen373 ) novcana_kazna_8_st1_min ) ) ( not ( and ?gen380 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen375 ) ) ) ) ) ) => ?gen373 <- ( novcana_kazna_8_st1_min ( positive 0 ) )"))

([kazna_cl_8_st1_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-defeasibly-gen475)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen380 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) novcana_kazna_8_st1_min ) ) => ?gen373 <- ( novcana_kazna_8_st1_min ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min_novcana ?gen380 ) )"))

([kazna_cl_8_st1_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-overruled-dot-gen477)
   (depends-on declare novcana_kazna_8_st1_min commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( test ( eq ( class ?gen373 ) novcana_kazna_8_st1_min ) ) ( not ( and ?gen380 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( positive-defeated $?gen375 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen375 ) ) ) ) ) ) => ( calc ( bind $?gen378 ( delete-member$ $?gen377 ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen376 ) ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( negative-overruled $?gen378 ) )"))

([kazna_cl_8_st1_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-overruled-gen479)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen380 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( positive-defeated $?gen375 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) novcana_kazna_8_st1_min ) ) => ( calc ( bind $?gen378 ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen376 $?gen377 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( negative-overruled $?gen378 ) )"))

([kazna_cl_8_st1_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-support-gen481)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen372 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive-support $?gen375 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana ?gen372 $$$ $?gen375 ) ) ) ) ) ( test ( eq ( class ?gen373 ) novcana_kazna_8_st1_min ) ) => ( calc ( bind $?gen378 ( create$ kazna_cl_8_st1_min_novcana ?gen372 $?gen375 ) ) ) ?gen373 <- ( novcana_kazna_8_st1_min ( positive-support $?gen378 ) )"))

([kazna_cl_8_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-defeasibly-dot-gen483)
   (depends-on declare kazna_zatvora_max commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_max] ) ) ) ?gen364 <- ( kazna_zatvora_max ( value 1 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max $? ) ) ( test ( eq ( class ?gen364 ) kazna_zatvora_max ) ) ( not ( and ?gen371 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ kazna_cl_8_st1_max $?gen366 ) ) ) ) ) ) => ?gen364 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_8_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-defeasibly-gen485)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_max] ) ) ) ?gen371 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( kazna_zatvora_max ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ kazna_cl_8_st1_max $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) kazna_zatvora_max ) ) => ?gen364 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max ?gen371 ) )"))

([kazna_cl_8_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-overruled-dot-gen487)
   (depends-on declare kazna_zatvora_max commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_max] ) ) ) ?gen364 <- ( kazna_zatvora_max ( value 1 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( subseq-pos ( create$ kazna_cl_8_st1_max-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( test ( eq ( class ?gen364 ) kazna_zatvora_max ) ) ( not ( and ?gen371 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( kazna_zatvora_max ( positive-defeated $?gen366 & : ( not ( member$ kazna_cl_8_st1_max $?gen366 ) ) ) ) ) ) => ( calc ( bind $?gen369 ( delete-member$ $?gen368 ( create$ kazna_cl_8_st1_max-overruled $?gen367 ) ) ) ) ?gen364 <- ( kazna_zatvora_max ( negative-overruled $?gen369 ) )"))

([kazna_cl_8_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-overruled-gen489)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_max] ) ) ) ?gen371 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( kazna_zatvora_max ( value 1 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( positive-defeated $?gen366 & : ( not ( member$ kazna_cl_8_st1_max $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen369 ( create$ kazna_cl_8_st1_max-overruled $?gen367 $?gen368 ) ) ) ?gen364 <- ( kazna_zatvora_max ( negative-overruled $?gen369 ) )"))

([kazna_cl_8_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-support-gen491)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_max] ) ) ) ?gen363 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen364 <- ( kazna_zatvora_max ( value 1 ) ( positive-support $?gen366 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max ?gen363 $$$ $?gen366 ) ) ) ) ) ( test ( eq ( class ?gen364 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen369 ( create$ kazna_cl_8_st1_max ?gen363 $?gen366 ) ) ) ?gen364 <- ( kazna_zatvora_max ( positive-support $?gen369 ) )"))

([kazna_cl_8_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-defeasibly-dot-gen493)
   (depends-on declare kazna_zatvora_min commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_min] ) ) ) ?gen355 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min $? ) ) ( test ( eq ( class ?gen355 ) kazna_zatvora_min ) ) ( not ( and ?gen362 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ kazna_cl_8_st1_min $?gen357 ) ) ) ) ) ) => ?gen355 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_8_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-defeasibly-gen495)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_min] ) ) ) ?gen362 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ kazna_cl_8_st1_min $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) kazna_zatvora_min ) ) => ?gen355 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min ?gen362 ) )"))

([kazna_cl_8_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-overruled-dot-gen497)
   (depends-on declare kazna_zatvora_min commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_min] ) ) ) ?gen355 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( subseq-pos ( create$ kazna_cl_8_st1_min-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( test ( eq ( class ?gen355 ) kazna_zatvora_min ) ) ( not ( and ?gen362 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( kazna_zatvora_min ( positive-defeated $?gen357 & : ( not ( member$ kazna_cl_8_st1_min $?gen357 ) ) ) ) ) ) => ( calc ( bind $?gen360 ( delete-member$ $?gen359 ( create$ kazna_cl_8_st1_min-overruled $?gen358 ) ) ) ) ?gen355 <- ( kazna_zatvora_min ( negative-overruled $?gen360 ) )"))

([kazna_cl_8_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-overruled-gen499)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_min] ) ) ) ?gen362 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( positive-defeated $?gen357 & : ( not ( member$ kazna_cl_8_st1_min $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen360 ( create$ kazna_cl_8_st1_min-overruled $?gen358 $?gen359 ) ) ) ?gen355 <- ( kazna_zatvora_min ( negative-overruled $?gen360 ) )"))

([kazna_cl_8_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-support-gen501)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_min] ) ) ) ?gen354 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen355 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen357 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min ?gen354 $$$ $?gen357 ) ) ) ) ) ( test ( eq ( class ?gen355 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen360 ( create$ kazna_cl_8_st1_min ?gen354 $?gen357 ) ) ) ?gen355 <- ( kazna_zatvora_min ( positive-support $?gen360 ) )"))

([kazna_cl_376_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-dot-gen503)
   (depends-on declare kazna_zatvora_cl_376_st3_max commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_max] ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max $? ) ) ( test ( eq ( class ?gen346 ) kazna_zatvora_cl_376_st3_max ) ) ( not ( and ?gen353 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ kazna_cl_376_st3_max $?gen348 ) ) ) ) ) ) => ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( positive 0 ) )"))

([kazna_cl_376_st3_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-gen505)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_max] ) ) ) ?gen353 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ kazna_cl_376_st3_max $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) kazna_zatvora_cl_376_st3_max ) ) => ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max ?gen353 ) )"))

([kazna_cl_376_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-dot-gen507)
   (depends-on declare kazna_zatvora_cl_376_st3_max commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_max] ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( value 60 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( test ( eq ( class ?gen346 ) kazna_zatvora_cl_376_st3_max ) ) ( not ( and ?gen353 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( positive-defeated $?gen348 & : ( not ( member$ kazna_cl_376_st3_max $?gen348 ) ) ) ) ) ) => ( calc ( bind $?gen351 ( delete-member$ $?gen350 ( create$ kazna_cl_376_st3_max-overruled $?gen349 ) ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( negative-overruled $?gen351 ) )"))

([kazna_cl_376_st3_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-gen509)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_max] ) ) ) ?gen353 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( value 60 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( positive-defeated $?gen348 & : ( not ( member$ kazna_cl_376_st3_max $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) kazna_zatvora_cl_376_st3_max ) ) => ( calc ( bind $?gen351 ( create$ kazna_cl_376_st3_max-overruled $?gen349 $?gen350 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( negative-overruled $?gen351 ) )"))

([kazna_cl_376_st3_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-support-gen511)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_max] ) ) ) ?gen345 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( value 60 ) ( positive-support $?gen348 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max ?gen345 $$$ $?gen348 ) ) ) ) ) ( test ( eq ( class ?gen346 ) kazna_zatvora_cl_376_st3_max ) ) => ( calc ( bind $?gen351 ( create$ kazna_cl_376_st3_max ?gen345 $?gen348 ) ) ) ?gen346 <- ( kazna_zatvora_cl_376_st3_max ( positive-support $?gen351 ) )"))

([kazna_cl_376_st3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-dot-gen513)
   (depends-on declare kazna_zatvora_cl_376_st3_min commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_min] ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min $? ) ) ( test ( eq ( class ?gen337 ) kazna_zatvora_cl_376_st3_min ) ) ( not ( and ?gen344 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ kazna_cl_376_st3_min $?gen339 ) ) ) ) ) ) => ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( positive 0 ) )"))

([kazna_cl_376_st3_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-gen515)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_min] ) ) ) ?gen344 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ kazna_cl_376_st3_min $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) kazna_zatvora_cl_376_st3_min ) ) => ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min ?gen344 ) )"))

([kazna_cl_376_st3_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-dot-gen517)
   (depends-on declare kazna_zatvora_cl_376_st3_min commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_min] ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( value 6 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( test ( eq ( class ?gen337 ) kazna_zatvora_cl_376_st3_min ) ) ( not ( and ?gen344 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( positive-defeated $?gen339 & : ( not ( member$ kazna_cl_376_st3_min $?gen339 ) ) ) ) ) ) => ( calc ( bind $?gen342 ( delete-member$ $?gen341 ( create$ kazna_cl_376_st3_min-overruled $?gen340 ) ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( negative-overruled $?gen342 ) )"))

([kazna_cl_376_st3_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-gen519)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_min] ) ) ) ?gen344 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( value 6 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( positive-defeated $?gen339 & : ( not ( member$ kazna_cl_376_st3_min $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) kazna_zatvora_cl_376_st3_min ) ) => ( calc ( bind $?gen342 ( create$ kazna_cl_376_st3_min-overruled $?gen340 $?gen341 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( negative-overruled $?gen342 ) )"))

([kazna_cl_376_st3_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-support-gen521)
   (depends-on declare commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_min] ) ) ) ?gen336 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( value 6 ) ( positive-support $?gen339 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min ?gen336 $$$ $?gen339 ) ) ) ) ) ( test ( eq ( class ?gen337 ) kazna_zatvora_cl_376_st3_min ) ) => ( calc ( bind $?gen342 ( create$ kazna_cl_376_st3_min ?gen336 $?gen339 ) ) ) ?gen337 <- ( kazna_zatvora_cl_376_st3_min ( positive-support $?gen342 ) )"))

([kazna_cl_376_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-dot-gen543)
   (depends-on declare kazna_zatvora_cl_376_st2_max commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_max] ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max $? ) ) ( test ( eq ( class ?gen310 ) kazna_zatvora_cl_376_st2_max ) ) ( not ( and ?gen317 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ kazna_cl_376_st2_max $?gen312 ) ) ) ) ) ) => ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( positive 0 ) )"))

([kazna_cl_376_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-gen545)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_max] ) ) ) ?gen317 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ kazna_cl_376_st2_max $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) kazna_zatvora_cl_376_st2_max ) ) => ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max ?gen317 ) )"))

([kazna_cl_376_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-dot-gen547)
   (depends-on declare kazna_zatvora_cl_376_st2_max commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_max] ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( value 60 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( test ( eq ( class ?gen310 ) kazna_zatvora_cl_376_st2_max ) ) ( not ( and ?gen317 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( positive-defeated $?gen312 & : ( not ( member$ kazna_cl_376_st2_max $?gen312 ) ) ) ) ) ) => ( calc ( bind $?gen315 ( delete-member$ $?gen314 ( create$ kazna_cl_376_st2_max-overruled $?gen313 ) ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( negative-overruled $?gen315 ) )"))

([kazna_cl_376_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-gen549)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_max] ) ) ) ?gen317 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( value 60 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( positive-defeated $?gen312 & : ( not ( member$ kazna_cl_376_st2_max $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) kazna_zatvora_cl_376_st2_max ) ) => ( calc ( bind $?gen315 ( create$ kazna_cl_376_st2_max-overruled $?gen313 $?gen314 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( negative-overruled $?gen315 ) )"))

([kazna_cl_376_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-support-gen551)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_max] ) ) ) ?gen309 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( value 60 ) ( positive-support $?gen312 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max ?gen309 $$$ $?gen312 ) ) ) ) ) ( test ( eq ( class ?gen310 ) kazna_zatvora_cl_376_st2_max ) ) => ( calc ( bind $?gen315 ( create$ kazna_cl_376_st2_max ?gen309 $?gen312 ) ) ) ?gen310 <- ( kazna_zatvora_cl_376_st2_max ( positive-support $?gen315 ) )"))

([kazna_cl_376_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-dot-gen553)
   (depends-on declare kazna_zatvora_cl_376_st2_min commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_min] ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( value 3 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min $? ) ) ( test ( eq ( class ?gen301 ) kazna_zatvora_cl_376_st2_min ) ) ( not ( and ?gen308 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ kazna_cl_376_st2_min $?gen303 ) ) ) ) ) ) => ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( positive 0 ) )"))

([kazna_cl_376_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-gen555)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_min] ) ) ) ?gen308 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ kazna_cl_376_st2_min $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) kazna_zatvora_cl_376_st2_min ) ) => ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min ?gen308 ) )"))

([kazna_cl_376_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-dot-gen557)
   (depends-on declare kazna_zatvora_cl_376_st2_min commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_min] ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( value 3 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( test ( eq ( class ?gen301 ) kazna_zatvora_cl_376_st2_min ) ) ( not ( and ?gen308 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( positive-defeated $?gen303 & : ( not ( member$ kazna_cl_376_st2_min $?gen303 ) ) ) ) ) ) => ( calc ( bind $?gen306 ( delete-member$ $?gen305 ( create$ kazna_cl_376_st2_min-overruled $?gen304 ) ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( negative-overruled $?gen306 ) )"))

([kazna_cl_376_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-gen559)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_min] ) ) ) ?gen308 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( value 3 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( positive-defeated $?gen303 & : ( not ( member$ kazna_cl_376_st2_min $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) kazna_zatvora_cl_376_st2_min ) ) => ( calc ( bind $?gen306 ( create$ kazna_cl_376_st2_min-overruled $?gen304 $?gen305 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( negative-overruled $?gen306 ) )"))

([kazna_cl_376_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-support-gen561)
   (depends-on declare commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_min] ) ) ) ?gen300 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( value 3 ) ( positive-support $?gen303 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min ?gen300 $$$ $?gen303 ) ) ) ) ) ( test ( eq ( class ?gen301 ) kazna_zatvora_cl_376_st2_min ) ) => ( calc ( bind $?gen306 ( create$ kazna_cl_376_st2_min ?gen300 $?gen303 ) ) ) ?gen301 <- ( kazna_zatvora_cl_376_st2_min ( positive-support $?gen306 ) )"))

([kazna_cl_376_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-dot-gen563)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_max] ) ) ) ?gen292 <- ( kazna_zatvora_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max $? ) ) ( test ( eq ( class ?gen292 ) kazna_zatvora_max ) ) ( not ( and ?gen299 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ kazna_cl_376_st1_max $?gen294 ) ) ) ) ) ) => ?gen292 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-gen565)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_max] ) ) ) ?gen299 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( kazna_zatvora_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ kazna_cl_376_st1_max $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) kazna_zatvora_max ) ) => ?gen292 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max ?gen299 ) )"))

([kazna_cl_376_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-dot-gen567)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_max] ) ) ) ?gen292 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( test ( eq ( class ?gen292 ) kazna_zatvora_max ) ) ( not ( and ?gen299 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( kazna_zatvora_max ( positive-defeated $?gen294 & : ( not ( member$ kazna_cl_376_st1_max $?gen294 ) ) ) ) ) ) => ( calc ( bind $?gen297 ( delete-member$ $?gen296 ( create$ kazna_cl_376_st1_max-overruled $?gen295 ) ) ) ) ?gen292 <- ( kazna_zatvora_max ( negative-overruled $?gen297 ) )"))

([kazna_cl_376_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-gen569)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_max] ) ) ) ?gen299 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( positive-defeated $?gen294 & : ( not ( member$ kazna_cl_376_st1_max $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen297 ( create$ kazna_cl_376_st1_max-overruled $?gen295 $?gen296 ) ) ) ?gen292 <- ( kazna_zatvora_max ( negative-overruled $?gen297 ) )"))

([kazna_cl_376_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-support-gen571)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_max] ) ) ) ?gen291 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen292 <- ( kazna_zatvora_max ( value 36 ) ( positive-support $?gen294 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max ?gen291 $$$ $?gen294 ) ) ) ) ) ( test ( eq ( class ?gen292 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen297 ( create$ kazna_cl_376_st1_max ?gen291 $?gen294 ) ) ) ?gen292 <- ( kazna_zatvora_max ( positive-support $?gen297 ) )"))

([kazna_cl_376_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-dot-gen573)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_min] ) ) ) ?gen283 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min $? ) ) ( test ( eq ( class ?gen283 ) kazna_zatvora_min ) ) ( not ( and ?gen290 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ kazna_cl_376_st1_min $?gen285 ) ) ) ) ) ) => ?gen283 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-gen575)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_min] ) ) ) ?gen290 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ kazna_cl_376_st1_min $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) kazna_zatvora_min ) ) => ?gen283 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min ?gen290 ) )"))

([kazna_cl_376_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-dot-gen577)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_min] ) ) ) ?gen283 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( test ( eq ( class ?gen283 ) kazna_zatvora_min ) ) ( not ( and ?gen290 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( kazna_zatvora_min ( positive-defeated $?gen285 & : ( not ( member$ kazna_cl_376_st1_min $?gen285 ) ) ) ) ) ) => ( calc ( bind $?gen288 ( delete-member$ $?gen287 ( create$ kazna_cl_376_st1_min-overruled $?gen286 ) ) ) ) ?gen283 <- ( kazna_zatvora_min ( negative-overruled $?gen288 ) )"))

([kazna_cl_376_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-gen579)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_min] ) ) ) ?gen290 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( positive-defeated $?gen285 & : ( not ( member$ kazna_cl_376_st1_min $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen288 ( create$ kazna_cl_376_st1_min-overruled $?gen286 $?gen287 ) ) ) ?gen283 <- ( kazna_zatvora_min ( negative-overruled $?gen288 ) )"))

([kazna_cl_376_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-support-gen581)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_min] ) ) ) ?gen282 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen283 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen285 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min ?gen282 $$$ $?gen285 ) ) ) ) ) ( test ( eq ( class ?gen283 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen288 ( create$ kazna_cl_376_st1_min ?gen282 $?gen285 ) ) ) ?gen283 <- ( kazna_zatvora_min ( positive-support $?gen288 ) )"))

([kazna_cl_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-dot-gen583)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st3] ) ) ) ?gen274 <- ( sudska_opomena ( value 1 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st3 $? ) ) ( test ( eq ( class ?gen274 ) sudska_opomena ) ) ( not ( and ?gen281 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( sudska_opomena ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ kazna_cl_152_st3 $?gen276 ) ) ) ) ) ) => ?gen274 <- ( sudska_opomena ( positive 0 ) )"))

([kazna_cl_152_st3-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-gen585)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st3] ) ) ) ?gen281 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( sudska_opomena ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ kazna_cl_152_st3 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) sudska_opomena ) ) => ?gen274 <- ( sudska_opomena ( positive 1 ) ( positive-derivator kazna_cl_152_st3 ?gen281 ) )"))

([kazna_cl_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-dot-gen587)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st3] ) ) ) ?gen274 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( test ( eq ( class ?gen274 ) sudska_opomena ) ) ( not ( and ?gen281 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( sudska_opomena ( positive-defeated $?gen276 & : ( not ( member$ kazna_cl_152_st3 $?gen276 ) ) ) ) ) ) => ( calc ( bind $?gen279 ( delete-member$ $?gen278 ( create$ kazna_cl_152_st3-overruled $?gen277 ) ) ) ) ?gen274 <- ( sudska_opomena ( negative-overruled $?gen279 ) )"))

([kazna_cl_152_st3-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-gen589)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st3] ) ) ) ?gen281 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( positive-defeated $?gen276 & : ( not ( member$ kazna_cl_152_st3 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) sudska_opomena ) ) => ( calc ( bind $?gen279 ( create$ kazna_cl_152_st3-overruled $?gen277 $?gen278 ) ) ) ?gen274 <- ( sudska_opomena ( negative-overruled $?gen279 ) )"))

([kazna_cl_152_st3-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-support-gen591)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st3] ) ) ) ?gen273 <- ( commited_152_st3 ( defendant ?Defendant ) ) ?gen274 <- ( sudska_opomena ( value 1 ) ( positive-support $?gen276 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3 ?gen273 $$$ $?gen276 ) ) ) ) ) ( test ( eq ( class ?gen274 ) sudska_opomena ) ) => ( calc ( bind $?gen279 ( create$ kazna_cl_152_st3 ?gen273 $?gen276 ) ) ) ?gen274 <- ( sudska_opomena ( positive-support $?gen279 ) )"))

([kazna_cl_152_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-dot-gen593)
   (depends-on declare kazna_zatvora_cl_152_st2_max commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_max] ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max $? ) ) ( test ( eq ( class ?gen265 ) kazna_zatvora_cl_152_st2_max ) ) ( not ( and ?gen272 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ kazna_cl_152_st2_max $?gen267 ) ) ) ) ) ) => ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( positive 0 ) )"))

([kazna_cl_152_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-gen595)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_max] ) ) ) ?gen272 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ kazna_cl_152_st2_max $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) kazna_zatvora_cl_152_st2_max ) ) => ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max ?gen272 ) )"))

([kazna_cl_152_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-dot-gen597)
   (depends-on declare kazna_zatvora_cl_152_st2_max commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_max] ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( value 36 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( test ( eq ( class ?gen265 ) kazna_zatvora_cl_152_st2_max ) ) ( not ( and ?gen272 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( positive-defeated $?gen267 & : ( not ( member$ kazna_cl_152_st2_max $?gen267 ) ) ) ) ) ) => ( calc ( bind $?gen270 ( delete-member$ $?gen269 ( create$ kazna_cl_152_st2_max-overruled $?gen268 ) ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( negative-overruled $?gen270 ) )"))

([kazna_cl_152_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-gen599)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_max] ) ) ) ?gen272 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( value 36 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( positive-defeated $?gen267 & : ( not ( member$ kazna_cl_152_st2_max $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) kazna_zatvora_cl_152_st2_max ) ) => ( calc ( bind $?gen270 ( create$ kazna_cl_152_st2_max-overruled $?gen268 $?gen269 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( negative-overruled $?gen270 ) )"))

([kazna_cl_152_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-support-gen601)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_max] ) ) ) ?gen264 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( value 36 ) ( positive-support $?gen267 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max ?gen264 $$$ $?gen267 ) ) ) ) ) ( test ( eq ( class ?gen265 ) kazna_zatvora_cl_152_st2_max ) ) => ( calc ( bind $?gen270 ( create$ kazna_cl_152_st2_max ?gen264 $?gen267 ) ) ) ?gen265 <- ( kazna_zatvora_cl_152_st2_max ( positive-support $?gen270 ) )"))

([kazna_cl_152_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-dot-gen603)
   (depends-on declare kazna_zatvora_cl_152_st2_min commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_min] ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min $? ) ) ( test ( eq ( class ?gen256 ) kazna_zatvora_cl_152_st2_min ) ) ( not ( and ?gen263 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ kazna_cl_152_st2_min $?gen258 ) ) ) ) ) ) => ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( positive 0 ) )"))

([kazna_cl_152_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-gen605)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_min] ) ) ) ?gen263 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ kazna_cl_152_st2_min $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) kazna_zatvora_cl_152_st2_min ) ) => ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min ?gen263 ) )"))

([kazna_cl_152_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-dot-gen607)
   (depends-on declare kazna_zatvora_cl_152_st2_min commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_min] ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( value 0 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( test ( eq ( class ?gen256 ) kazna_zatvora_cl_152_st2_min ) ) ( not ( and ?gen263 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( positive-defeated $?gen258 & : ( not ( member$ kazna_cl_152_st2_min $?gen258 ) ) ) ) ) ) => ( calc ( bind $?gen261 ( delete-member$ $?gen260 ( create$ kazna_cl_152_st2_min-overruled $?gen259 ) ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( negative-overruled $?gen261 ) )"))

([kazna_cl_152_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-gen609)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_min] ) ) ) ?gen263 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( value 0 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( positive-defeated $?gen258 & : ( not ( member$ kazna_cl_152_st2_min $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) kazna_zatvora_cl_152_st2_min ) ) => ( calc ( bind $?gen261 ( create$ kazna_cl_152_st2_min-overruled $?gen259 $?gen260 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( negative-overruled $?gen261 ) )"))

([kazna_cl_152_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-support-gen611)
   (depends-on declare commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_min] ) ) ) ?gen255 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( value 0 ) ( positive-support $?gen258 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min ?gen255 $$$ $?gen258 ) ) ) ) ) ( test ( eq ( class ?gen256 ) kazna_zatvora_cl_152_st2_min ) ) => ( calc ( bind $?gen261 ( create$ kazna_cl_152_st2_min ?gen255 $?gen258 ) ) ) ?gen256 <- ( kazna_zatvora_cl_152_st2_min ( positive-support $?gen261 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-dot-gen613)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana $? ) ) ( test ( eq ( class ?gen247 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen254 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen249 ) ) ) ) ) ) => ?gen247 <- ( novcana_kazna_152_st1_max ( positive 0 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-gen615)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen254 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) novcana_kazna_152_st1_max ) ) => ?gen247 <- ( novcana_kazna_152_st1_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana ?gen254 ) )"))

([kazna_cl_152_st1_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-dot-gen617)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen254 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( positive-defeated $?gen249 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen250 ) ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen252 ) )"))

([kazna_cl_152_st1_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-gen619)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen254 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen252 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen252 ) )"))

([kazna_cl_152_st1_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-support-gen621)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen246 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen252 ( create$ kazna_cl_152_st1_max_novcana ?gen246 $?gen249 ) ) ) ?gen247 <- ( novcana_kazna_152_st1_max ( positive-support $?gen252 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-dot-gen623)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana $? ) ) ( test ( eq ( class ?gen238 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen245 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen240 ) ) ) ) ) ) => ?gen238 <- ( novcana_kazna_152_st1_min ( positive 0 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-gen625)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen245 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) novcana_kazna_152_st1_min ) ) => ?gen238 <- ( novcana_kazna_152_st1_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana ?gen245 ) )"))

([kazna_cl_152_st1_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-dot-gen627)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen245 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( positive-defeated $?gen240 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen241 ) ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen243 ) )"))

([kazna_cl_152_st1_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-gen629)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen245 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen243 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen243 ) )"))

([kazna_cl_152_st1_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-support-gen631)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen237 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen243 ( create$ kazna_cl_152_st1_min_novcana ?gen237 $?gen240 ) ) ) ?gen238 <- ( novcana_kazna_152_st1_min ( positive-support $?gen243 ) )"))

([kazna_cl_152_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-dot-gen633)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max] ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max $? ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) ( not ( and ?gen236 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ kazna_cl_152_st1_max $?gen231 ) ) ) ) ) ) => ?gen229 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_152_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-gen635)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max] ) ) ) ?gen236 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ kazna_cl_152_st1_max $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ?gen229 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max ?gen236 ) )"))

([kazna_cl_152_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-dot-gen637)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max] ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) ( not ( and ?gen236 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( positive-defeated $?gen231 & : ( not ( member$ kazna_cl_152_st1_max $?gen231 ) ) ) ) ) ) => ( calc ( bind $?gen234 ( delete-member$ $?gen233 ( create$ kazna_cl_152_st1_max-overruled $?gen232 ) ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative-overruled $?gen234 ) )"))

([kazna_cl_152_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-gen639)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max] ) ) ) ?gen236 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( positive-defeated $?gen231 & : ( not ( member$ kazna_cl_152_st1_max $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen234 ( create$ kazna_cl_152_st1_max-overruled $?gen232 $?gen233 ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative-overruled $?gen234 ) )"))

([kazna_cl_152_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-support-gen641)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max] ) ) ) ?gen228 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen229 <- ( kazna_zatvora_max ( value 12 ) ( positive-support $?gen231 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max ?gen228 $$$ $?gen231 ) ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen234 ( create$ kazna_cl_152_st1_max ?gen228 $?gen231 ) ) ) ?gen229 <- ( kazna_zatvora_max ( positive-support $?gen234 ) )"))

([kazna_cl_152_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-dot-gen643)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min] ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min $? ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) ( not ( and ?gen227 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ kazna_cl_152_st1_min $?gen222 ) ) ) ) ) ) => ?gen220 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_152_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-gen645)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min] ) ) ) ?gen227 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ kazna_cl_152_st1_min $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ?gen220 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min ?gen227 ) )"))

([kazna_cl_152_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-dot-gen647)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min] ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) ( not ( and ?gen227 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( positive-defeated $?gen222 & : ( not ( member$ kazna_cl_152_st1_min $?gen222 ) ) ) ) ) ) => ( calc ( bind $?gen225 ( delete-member$ $?gen224 ( create$ kazna_cl_152_st1_min-overruled $?gen223 ) ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative-overruled $?gen225 ) )"))

([kazna_cl_152_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-gen649)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min] ) ) ) ?gen227 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( positive-defeated $?gen222 & : ( not ( member$ kazna_cl_152_st1_min $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen225 ( create$ kazna_cl_152_st1_min-overruled $?gen223 $?gen224 ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative-overruled $?gen225 ) )"))

([kazna_cl_152_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-support-gen651)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min] ) ) ) ?gen219 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen220 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen222 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min ?gen219 $$$ $?gen222 ) ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen225 ( create$ kazna_cl_152_st1_min ?gen219 $?gen222 ) ) ) ?gen220 <- ( kazna_zatvora_min ( positive-support $?gen225 ) )"))

([kazna_cl_151_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-dot-gen673)
   (depends-on declare kazna_zatvora_cl_151_st2_max commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_max] ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( value 96 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max $? ) ) ( test ( eq ( class ?gen193 ) kazna_zatvora_cl_151_st2_max ) ) ( not ( and ?gen200 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ kazna_cl_151_st2_max $?gen195 ) ) ) ) ) ) => ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( positive 0 ) )"))

([kazna_cl_151_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-gen675)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_max] ) ) ) ?gen200 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( value 96 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ kazna_cl_151_st2_max $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) kazna_zatvora_cl_151_st2_max ) ) => ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max ?gen200 ) )"))

([kazna_cl_151_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-dot-gen677)
   (depends-on declare kazna_zatvora_cl_151_st2_max commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_max] ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( value 96 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( test ( eq ( class ?gen193 ) kazna_zatvora_cl_151_st2_max ) ) ( not ( and ?gen200 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( positive-defeated $?gen195 & : ( not ( member$ kazna_cl_151_st2_max $?gen195 ) ) ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen197 ( create$ kazna_cl_151_st2_max-overruled $?gen196 ) ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( negative-overruled $?gen198 ) )"))

([kazna_cl_151_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-gen679)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_max] ) ) ) ?gen200 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( value 96 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( positive-defeated $?gen195 & : ( not ( member$ kazna_cl_151_st2_max $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) kazna_zatvora_cl_151_st2_max ) ) => ( calc ( bind $?gen198 ( create$ kazna_cl_151_st2_max-overruled $?gen196 $?gen197 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( negative-overruled $?gen198 ) )"))

([kazna_cl_151_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-support-gen681)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_max] ) ) ) ?gen192 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( value 96 ) ( positive-support $?gen195 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max ?gen192 $$$ $?gen195 ) ) ) ) ) ( test ( eq ( class ?gen193 ) kazna_zatvora_cl_151_st2_max ) ) => ( calc ( bind $?gen198 ( create$ kazna_cl_151_st2_max ?gen192 $?gen195 ) ) ) ?gen193 <- ( kazna_zatvora_cl_151_st2_max ( positive-support $?gen198 ) )"))

([kazna_cl_151_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-dot-gen683)
   (depends-on declare kazna_zatvora_cl_151_st2_min commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_min] ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min $? ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_cl_151_st2_min ) ) ( not ( and ?gen191 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ kazna_cl_151_st2_min $?gen186 ) ) ) ) ) ) => ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( positive 0 ) )"))

([kazna_cl_151_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-gen685)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_min] ) ) ) ?gen191 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ kazna_cl_151_st2_min $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_cl_151_st2_min ) ) => ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min ?gen191 ) )"))

([kazna_cl_151_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-dot-gen687)
   (depends-on declare kazna_zatvora_cl_151_st2_min commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_min] ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( value 12 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_cl_151_st2_min ) ) ( not ( and ?gen191 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( positive-defeated $?gen186 & : ( not ( member$ kazna_cl_151_st2_min $?gen186 ) ) ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen188 ( create$ kazna_cl_151_st2_min-overruled $?gen187 ) ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( negative-overruled $?gen189 ) )"))

([kazna_cl_151_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-gen689)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_min] ) ) ) ?gen191 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( value 12 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( positive-defeated $?gen186 & : ( not ( member$ kazna_cl_151_st2_min $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_cl_151_st2_min ) ) => ( calc ( bind $?gen189 ( create$ kazna_cl_151_st2_min-overruled $?gen187 $?gen188 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( negative-overruled $?gen189 ) )"))

([kazna_cl_151_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-support-gen691)
   (depends-on declare commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_min] ) ) ) ?gen183 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( value 12 ) ( positive-support $?gen186 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min ?gen183 $$$ $?gen186 ) ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_cl_151_st2_min ) ) => ( calc ( bind $?gen189 ( create$ kazna_cl_151_st2_min ?gen183 $?gen186 ) ) ) ?gen184 <- ( kazna_zatvora_cl_151_st2_min ( positive-support $?gen189 ) )"))

([kazna_cl_151_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-dot-gen693)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_max] ) ) ) ?gen175 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max $? ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_max ) ) ( not ( and ?gen182 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ kazna_cl_151_st1_max $?gen177 ) ) ) ) ) ) => ?gen175 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_151_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-gen695)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_max] ) ) ) ?gen182 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ kazna_cl_151_st1_max $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_max ) ) => ?gen175 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max ?gen182 ) )"))

([kazna_cl_151_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-dot-gen697)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_max] ) ) ) ?gen175 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_max ) ) ( not ( and ?gen182 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_max ( positive-defeated $?gen177 & : ( not ( member$ kazna_cl_151_st1_max $?gen177 ) ) ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen179 ( create$ kazna_cl_151_st1_max-overruled $?gen178 ) ) ) ) ?gen175 <- ( kazna_zatvora_max ( negative-overruled $?gen180 ) )"))

([kazna_cl_151_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-gen699)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_max] ) ) ) ?gen182 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( positive-defeated $?gen177 & : ( not ( member$ kazna_cl_151_st1_max $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen180 ( create$ kazna_cl_151_st1_max-overruled $?gen178 $?gen179 ) ) ) ?gen175 <- ( kazna_zatvora_max ( negative-overruled $?gen180 ) )"))

([kazna_cl_151_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-support-gen701)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_max] ) ) ) ?gen174 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen175 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen177 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max ?gen174 $$$ $?gen177 ) ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen180 ( create$ kazna_cl_151_st1_max ?gen174 $?gen177 ) ) ) ?gen175 <- ( kazna_zatvora_max ( positive-support $?gen180 ) )"))

([kazna_cl_151_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-dot-gen703)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_min] ) ) ) ?gen166 <- ( kazna_zatvora_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min $? ) ) ( test ( eq ( class ?gen166 ) kazna_zatvora_min ) ) ( not ( and ?gen173 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ kazna_cl_151_st1_min $?gen168 ) ) ) ) ) ) => ?gen166 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_151_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-gen705)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_min] ) ) ) ?gen173 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( kazna_zatvora_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ kazna_cl_151_st1_min $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) kazna_zatvora_min ) ) => ?gen166 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min ?gen173 ) )"))

([kazna_cl_151_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-dot-gen707)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_min] ) ) ) ?gen166 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( test ( eq ( class ?gen166 ) kazna_zatvora_min ) ) ( not ( and ?gen173 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( kazna_zatvora_min ( positive-defeated $?gen168 & : ( not ( member$ kazna_cl_151_st1_min $?gen168 ) ) ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen170 ( create$ kazna_cl_151_st1_min-overruled $?gen169 ) ) ) ) ?gen166 <- ( kazna_zatvora_min ( negative-overruled $?gen171 ) )"))

([kazna_cl_151_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-gen709)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_min] ) ) ) ?gen173 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( positive-defeated $?gen168 & : ( not ( member$ kazna_cl_151_st1_min $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen171 ( create$ kazna_cl_151_st1_min-overruled $?gen169 $?gen170 ) ) ) ?gen166 <- ( kazna_zatvora_min ( negative-overruled $?gen171 ) )"))

([kazna_cl_151_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-support-gen711)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_min] ) ) ) ?gen165 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen166 <- ( kazna_zatvora_min ( value 6 ) ( positive-support $?gen168 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min ?gen165 $$$ $?gen168 ) ) ) ) ) ( test ( eq ( class ?gen166 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen171 ( create$ kazna_cl_151_st1_min ?gen165 $?gen168 ) ) ) ?gen166 <- ( kazna_zatvora_min ( positive-support $?gen171 ) )"))

([rule_10_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_10_st1-defeasibly-dot-gen713)
   (depends-on declare commited_10_st1 lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_10_st1] ) ) ) ?gen153 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_10_st1 $? ) ) ( test ( eq ( class ?gen153 ) commited_10_st1 ) ) ( not ( and ?gen160 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen159 & : ( >= ?gen159 1 ) ) ) ?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen161 & : ( >= ?gen161 1 ) ) ) ?gen164 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen153 <- ( commited_10_st1 ( negative ~ 2 ) ( positive-overruled $?gen155 & : ( not ( member$ rule_10_st1 $?gen155 ) ) ) ) ) ) => ?gen153 <- ( commited_10_st1 ( positive 0 ) )"))

([rule_10_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_10_st1-defeasibly-gen715)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_10_st1] ) ) ) ?gen160 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen159 & : ( >= ?gen159 1 ) ) ) ?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen161 & : ( >= ?gen161 1 ) ) ) ?gen164 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen153 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen155 & : ( not ( member$ rule_10_st1 $?gen155 ) ) ) ) ( test ( eq ( class ?gen153 ) commited_10_st1 ) ) => ?gen153 <- ( commited_10_st1 ( positive 1 ) ( positive-derivator rule_10_st1 ?gen160 ?gen162 ?gen164 ) )"))

([rule_10_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_10_st1-overruled-dot-gen717)
   (depends-on declare commited_10_st1 lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_10_st1] ) ) ) ?gen153 <- ( commited_10_st1 ( defendant ?Defendant ) ( negative-support $?gen156 ) ( negative-overruled $?gen157 & : ( subseq-pos ( create$ rule_10_st1-overruled $?gen156 $$$ $?gen157 ) ) ) ) ( test ( eq ( class ?gen153 ) commited_10_st1 ) ) ( not ( and ?gen160 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen159 & : ( >= ?gen159 1 ) ) ) ?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen161 & : ( >= ?gen161 1 ) ) ) ?gen164 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen153 <- ( commited_10_st1 ( positive-defeated $?gen155 & : ( not ( member$ rule_10_st1 $?gen155 ) ) ) ) ) ) => ( calc ( bind $?gen158 ( delete-member$ $?gen157 ( create$ rule_10_st1-overruled $?gen156 ) ) ) ) ?gen153 <- ( commited_10_st1 ( negative-overruled $?gen158 ) )"))

([rule_10_st1-overruled] of derived-attribute-rule
   (pos-name rule_10_st1-overruled-gen719)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_10_st1] ) ) ) ?gen160 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen159 & : ( >= ?gen159 1 ) ) ) ?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen161 & : ( >= ?gen161 1 ) ) ) ?gen164 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen153 <- ( commited_10_st1 ( defendant ?Defendant ) ( negative-support $?gen156 ) ( negative-overruled $?gen157 & : ( not ( subseq-pos ( create$ rule_10_st1-overruled $?gen156 $$$ $?gen157 ) ) ) ) ( positive-defeated $?gen155 & : ( not ( member$ rule_10_st1 $?gen155 ) ) ) ) ( test ( eq ( class ?gen153 ) commited_10_st1 ) ) => ( calc ( bind $?gen158 ( create$ rule_10_st1-overruled $?gen156 $?gen157 ) ) ) ?gen153 <- ( commited_10_st1 ( negative-overruled $?gen158 ) )"))

([rule_10_st1-support] of derived-attribute-rule
   (pos-name rule_10_st1-support-gen721)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_10_st1] ) ) ) ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen151 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen152 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ?gen153 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive-support $?gen155 & : ( not ( subseq-pos ( create$ rule_10_st1 ?gen150 ?gen151 ?gen152 $$$ $?gen155 ) ) ) ) ) ( test ( eq ( class ?gen153 ) commited_10_st1 ) ) => ( calc ( bind $?gen158 ( create$ rule_10_st1 ?gen150 ?gen151 ?gen152 $?gen155 ) ) ) ?gen153 <- ( commited_10_st1 ( positive-support $?gen158 ) )"))

([rule_8_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_8_st1-defeasibly-dot-gen723)
   (depends-on declare commited_8_st1 lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_8_st1] ) ) ) ?gen138 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_8_st1 $? ) ) ( test ( eq ( class ?gen138 ) commited_8_st1 ) ) ( not ( and ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen149 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen138 <- ( commited_8_st1 ( negative ~ 2 ) ( positive-overruled $?gen140 & : ( not ( member$ rule_8_st1 $?gen140 ) ) ) ) ) ) => ?gen138 <- ( commited_8_st1 ( positive 0 ) )"))

([rule_8_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_8_st1-defeasibly-gen725)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_8_st1] ) ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen149 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen138 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen140 & : ( not ( member$ rule_8_st1 $?gen140 ) ) ) ) ( test ( eq ( class ?gen138 ) commited_8_st1 ) ) => ?gen138 <- ( commited_8_st1 ( positive 1 ) ( positive-derivator rule_8_st1 ?gen145 ?gen147 ?gen149 ) )"))

([rule_8_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_8_st1-overruled-dot-gen727)
   (depends-on declare commited_8_st1 lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_8_st1] ) ) ) ?gen138 <- ( commited_8_st1 ( defendant ?Defendant ) ( negative-support $?gen141 ) ( negative-overruled $?gen142 & : ( subseq-pos ( create$ rule_8_st1-overruled $?gen141 $$$ $?gen142 ) ) ) ) ( test ( eq ( class ?gen138 ) commited_8_st1 ) ) ( not ( and ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen149 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen138 <- ( commited_8_st1 ( positive-defeated $?gen140 & : ( not ( member$ rule_8_st1 $?gen140 ) ) ) ) ) ) => ( calc ( bind $?gen143 ( delete-member$ $?gen142 ( create$ rule_8_st1-overruled $?gen141 ) ) ) ) ?gen138 <- ( commited_8_st1 ( negative-overruled $?gen143 ) )"))

([rule_8_st1-overruled] of derived-attribute-rule
   (pos-name rule_8_st1-overruled-gen729)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_8_st1] ) ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen144 & : ( >= ?gen144 1 ) ) ) ?gen147 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen149 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen138 <- ( commited_8_st1 ( defendant ?Defendant ) ( negative-support $?gen141 ) ( negative-overruled $?gen142 & : ( not ( subseq-pos ( create$ rule_8_st1-overruled $?gen141 $$$ $?gen142 ) ) ) ) ( positive-defeated $?gen140 & : ( not ( member$ rule_8_st1 $?gen140 ) ) ) ) ( test ( eq ( class ?gen138 ) commited_8_st1 ) ) => ( calc ( bind $?gen143 ( create$ rule_8_st1-overruled $?gen141 $?gen142 ) ) ) ?gen138 <- ( commited_8_st1 ( negative-overruled $?gen143 ) )"))

([rule_8_st1-support] of derived-attribute-rule
   (pos-name rule_8_st1-support-gen731)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_8_st1] ) ) ) ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen137 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ?gen138 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive-support $?gen140 & : ( not ( subseq-pos ( create$ rule_8_st1 ?gen135 ?gen136 ?gen137 $$$ $?gen140 ) ) ) ) ) ( test ( eq ( class ?gen138 ) commited_8_st1 ) ) => ( calc ( bind $?gen143 ( create$ rule_8_st1 ?gen135 ?gen136 ?gen137 $?gen140 ) ) ) ?gen138 <- ( commited_8_st1 ( positive-support $?gen143 ) )"))

([rule_376_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-dot-gen733)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st3] ) ) ) ?gen127 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st3 $? ) ) ( test ( eq ( class ?gen127 ) commited_376_st3 ) ) ( not ( and ?gen134 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( commited_376_st3 ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ rule_376_st3 $?gen129 ) ) ) ) ) ) => ?gen127 <- ( commited_376_st3 ( positive 0 ) )"))

([rule_376_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-gen735)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st3] ) ) ) ?gen134 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen129 & : ( not ( member$ rule_376_st3 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) commited_376_st3 ) ) => ?gen127 <- ( commited_376_st3 ( positive 1 ) ( positive-derivator rule_376_st3 ?gen134 ) )"))

([rule_376_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-dot-gen737)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st3] ) ) ) ?gen127 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( subseq-pos ( create$ rule_376_st3-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) commited_376_st3 ) ) ( not ( and ?gen134 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( commited_376_st3 ( positive-defeated $?gen129 & : ( not ( member$ rule_376_st3 $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ rule_376_st3-overruled $?gen130 ) ) ) ) ?gen127 <- ( commited_376_st3 ( negative-overruled $?gen132 ) )"))

([rule_376_st3-overruled] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-gen739)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st3] ) ) ) ?gen134 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen130 ) ( negative-overruled $?gen131 & : ( not ( subseq-pos ( create$ rule_376_st3-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( positive-defeated $?gen129 & : ( not ( member$ rule_376_st3 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) commited_376_st3 ) ) => ( calc ( bind $?gen132 ( create$ rule_376_st3-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( commited_376_st3 ( negative-overruled $?gen132 ) )"))

([rule_376_st3-support] of derived-attribute-rule
   (pos-name rule_376_st3-support-gen741)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st3] ) ) ) ?gen126 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ?gen127 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive-support $?gen129 & : ( not ( subseq-pos ( create$ rule_376_st3 ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) commited_376_st3 ) ) => ( calc ( bind $?gen132 ( create$ rule_376_st3 ?gen126 $?gen129 ) ) ) ?gen127 <- ( commited_376_st3 ( positive-support $?gen132 ) )"))

([rule_376_st2_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st2_2-defeasibly-dot-gen743)
   (depends-on declare commited_376_st2 commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st2_2] ) ) ) ?gen116 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st2_2 $? ) ) ( test ( eq ( class ?gen116 ) commited_376_st2 ) ) ( not ( and ?gen123 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_376_st2 ( negative ~ 2 ) ( positive-overruled $?gen118 & : ( not ( member$ rule_376_st2_2 $?gen118 ) ) ) ) ) ) => ?gen116 <- ( commited_376_st2 ( positive 0 ) )"))

([rule_376_st2_2-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st2_2-defeasibly-gen745)
   (depends-on declare commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st2_2] ) ) ) ?gen123 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen118 & : ( not ( member$ rule_376_st2_2 $?gen118 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_376_st2 ) ) => ?gen116 <- ( commited_376_st2 ( positive 1 ) ( positive-derivator rule_376_st2_2 ?gen123 ?gen125 ) )"))

([rule_376_st2_2-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st2_2-overruled-dot-gen747)
   (depends-on declare commited_376_st2 commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st2_2] ) ) ) ?gen116 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen119 ) ( negative-overruled $?gen120 & : ( subseq-pos ( create$ rule_376_st2_2-overruled $?gen119 $$$ $?gen120 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_376_st2 ) ) ( not ( and ?gen123 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_376_st2 ( positive-defeated $?gen118 & : ( not ( member$ rule_376_st2_2 $?gen118 ) ) ) ) ) ) => ( calc ( bind $?gen121 ( delete-member$ $?gen120 ( create$ rule_376_st2_2-overruled $?gen119 ) ) ) ) ?gen116 <- ( commited_376_st2 ( negative-overruled $?gen121 ) )"))

([rule_376_st2_2-overruled] of derived-attribute-rule
   (pos-name rule_376_st2_2-overruled-gen749)
   (depends-on declare commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st2_2] ) ) ) ?gen123 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen122 & : ( >= ?gen122 1 ) ) ) ?gen125 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen116 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen119 ) ( negative-overruled $?gen120 & : ( not ( subseq-pos ( create$ rule_376_st2_2-overruled $?gen119 $$$ $?gen120 ) ) ) ) ( positive-defeated $?gen118 & : ( not ( member$ rule_376_st2_2 $?gen118 ) ) ) ) ( test ( eq ( class ?gen116 ) commited_376_st2 ) ) => ( calc ( bind $?gen121 ( create$ rule_376_st2_2-overruled $?gen119 $?gen120 ) ) ) ?gen116 <- ( commited_376_st2 ( negative-overruled $?gen121 ) )"))

([rule_376_st2_2-support] of derived-attribute-rule
   (pos-name rule_376_st2_2-support-gen751)
   (depends-on declare commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st2_2] ) ) ) ?gen114 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ?gen116 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive-support $?gen118 & : ( not ( subseq-pos ( create$ rule_376_st2_2 ?gen114 ?gen115 $$$ $?gen118 ) ) ) ) ) ( test ( eq ( class ?gen116 ) commited_376_st2 ) ) => ( calc ( bind $?gen121 ( create$ rule_376_st2_2 ?gen114 ?gen115 $?gen118 ) ) ) ?gen116 <- ( commited_376_st2 ( positive-support $?gen121 ) )"))

([rule_376_st2_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st2_1-defeasibly-dot-gen753)
   (depends-on declare commited_376_st2 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st2_1] ) ) ) ?gen104 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st2_1 $? ) ) ( test ( eq ( class ?gen104 ) commited_376_st2 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_376_st2 ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule_376_st2_1 $?gen106 ) ) ) ) ) ) => ?gen104 <- ( commited_376_st2 ( positive 0 ) )"))

([rule_376_st2_1-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st2_1-defeasibly-gen755)
   (depends-on declare lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st2_1] ) ) ) ?gen111 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen106 & : ( not ( member$ rule_376_st2_1 $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_376_st2 ) ) => ?gen104 <- ( commited_376_st2 ( positive 1 ) ( positive-derivator rule_376_st2_1 ?gen111 ?gen113 ) )"))

([rule_376_st2_1-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st2_1-overruled-dot-gen757)
   (depends-on declare commited_376_st2 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st2_1] ) ) ) ?gen104 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( subseq-pos ( create$ rule_376_st2_1-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_376_st2 ) ) ( not ( and ?gen111 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_376_st2 ( positive-defeated $?gen106 & : ( not ( member$ rule_376_st2_1 $?gen106 ) ) ) ) ) ) => ( calc ( bind $?gen109 ( delete-member$ $?gen108 ( create$ rule_376_st2_1-overruled $?gen107 ) ) ) ) ?gen104 <- ( commited_376_st2 ( negative-overruled $?gen109 ) )"))

([rule_376_st2_1-overruled] of derived-attribute-rule
   (pos-name rule_376_st2_1-overruled-gen759)
   (depends-on declare lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st2_1] ) ) ) ?gen111 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen104 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen107 ) ( negative-overruled $?gen108 & : ( not ( subseq-pos ( create$ rule_376_st2_1-overruled $?gen107 $$$ $?gen108 ) ) ) ) ( positive-defeated $?gen106 & : ( not ( member$ rule_376_st2_1 $?gen106 ) ) ) ) ( test ( eq ( class ?gen104 ) commited_376_st2 ) ) => ( calc ( bind $?gen109 ( create$ rule_376_st2_1-overruled $?gen107 $?gen108 ) ) ) ?gen104 <- ( commited_376_st2 ( negative-overruled $?gen109 ) )"))

([rule_376_st2_1-support] of derived-attribute-rule
   (pos-name rule_376_st2_1-support-gen761)
   (depends-on declare lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st2_1] ) ) ) ?gen102 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen104 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive-support $?gen106 & : ( not ( subseq-pos ( create$ rule_376_st2_1 ?gen102 ?gen103 $$$ $?gen106 ) ) ) ) ) ( test ( eq ( class ?gen104 ) commited_376_st2 ) ) => ( calc ( bind $?gen109 ( create$ rule_376_st2_1 ?gen102 ?gen103 $?gen106 ) ) ) ?gen104 <- ( commited_376_st2 ( positive-support $?gen109 ) )"))

([rule_376_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-dot-gen763)
   (depends-on declare commited_376_st1 lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st1] ) ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st1 $? ) ) ( test ( eq ( class ?gen90 ) commited_376_st1 ) ) ( not ( and ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen90 <- ( commited_376_st1 ( negative ~ 2 ) ( positive-overruled $?gen92 & : ( not ( member$ rule_376_st1 $?gen92 ) ) ) ) ) ) => ?gen90 <- ( commited_376_st1 ( positive 0 ) )"))

([rule_376_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-gen765)
   (depends-on declare lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st1] ) ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen92 & : ( not ( member$ rule_376_st1 $?gen92 ) ) ) ) ( test ( eq ( class ?gen90 ) commited_376_st1 ) ) => ?gen90 <- ( commited_376_st1 ( positive 1 ) ( positive-derivator rule_376_st1 ?gen97 ?gen99 ?gen101 ) )"))

([rule_376_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-dot-gen767)
   (depends-on declare commited_376_st1 lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st1] ) ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen93 ) ( negative-overruled $?gen94 & : ( subseq-pos ( create$ rule_376_st1-overruled $?gen93 $$$ $?gen94 ) ) ) ) ( test ( eq ( class ?gen90 ) commited_376_st1 ) ) ( not ( and ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen90 <- ( commited_376_st1 ( positive-defeated $?gen92 & : ( not ( member$ rule_376_st1 $?gen92 ) ) ) ) ) ) => ( calc ( bind $?gen95 ( delete-member$ $?gen94 ( create$ rule_376_st1-overruled $?gen93 ) ) ) ) ?gen90 <- ( commited_376_st1 ( negative-overruled $?gen95 ) )"))

([rule_376_st1-overruled] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-gen769)
   (depends-on declare lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st1] ) ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen96 & : ( >= ?gen96 1 ) ) ) ?gen99 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen98 & : ( >= ?gen98 1 ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen93 ) ( negative-overruled $?gen94 & : ( not ( subseq-pos ( create$ rule_376_st1-overruled $?gen93 $$$ $?gen94 ) ) ) ) ( positive-defeated $?gen92 & : ( not ( member$ rule_376_st1 $?gen92 ) ) ) ) ( test ( eq ( class ?gen90 ) commited_376_st1 ) ) => ( calc ( bind $?gen95 ( create$ rule_376_st1-overruled $?gen93 $?gen94 ) ) ) ?gen90 <- ( commited_376_st1 ( negative-overruled $?gen95 ) )"))

([rule_376_st1-support] of derived-attribute-rule
   (pos-name rule_376_st1-support-gen771)
   (depends-on declare lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st1] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen88 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive-support $?gen92 & : ( not ( subseq-pos ( create$ rule_376_st1 ?gen87 ?gen88 ?gen89 $$$ $?gen92 ) ) ) ) ) ( test ( eq ( class ?gen90 ) commited_376_st1 ) ) => ( calc ( bind $?gen95 ( create$ rule_376_st1 ?gen87 ?gen88 ?gen89 $?gen92 ) ) ) ?gen90 <- ( commited_376_st1 ( positive-support $?gen95 ) )"))

([rule_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-dot-gen773)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st3] ) ) ) ?gen77 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st3 $? ) ) ( test ( eq ( class ?gen77 ) commited_152_st3 ) ) ( not ( and ?gen84 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen77 <- ( commited_152_st3 ( negative ~ 2 ) ( positive-overruled $?gen79 & : ( not ( member$ rule_152_st3 $?gen79 ) ) ) ) ) ) => ?gen77 <- ( commited_152_st3 ( positive 0 ) )"))

([rule_152_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-gen775)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st3] ) ) ) ?gen84 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen77 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen79 & : ( not ( member$ rule_152_st3 $?gen79 ) ) ) ) ( test ( eq ( class ?gen77 ) commited_152_st3 ) ) => ?gen77 <- ( commited_152_st3 ( positive 1 ) ( positive-derivator rule_152_st3 ?gen84 ?gen86 ) )"))

([rule_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-dot-gen777)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st3] ) ) ) ?gen77 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen80 ) ( negative-overruled $?gen81 & : ( subseq-pos ( create$ rule_152_st3-overruled $?gen80 $$$ $?gen81 ) ) ) ) ( test ( eq ( class ?gen77 ) commited_152_st3 ) ) ( not ( and ?gen84 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen77 <- ( commited_152_st3 ( positive-defeated $?gen79 & : ( not ( member$ rule_152_st3 $?gen79 ) ) ) ) ) ) => ( calc ( bind $?gen82 ( delete-member$ $?gen81 ( create$ rule_152_st3-overruled $?gen80 ) ) ) ) ?gen77 <- ( commited_152_st3 ( negative-overruled $?gen82 ) )"))

([rule_152_st3-overruled] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-gen779)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st3] ) ) ) ?gen84 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen83 & : ( >= ?gen83 1 ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen77 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen80 ) ( negative-overruled $?gen81 & : ( not ( subseq-pos ( create$ rule_152_st3-overruled $?gen80 $$$ $?gen81 ) ) ) ) ( positive-defeated $?gen79 & : ( not ( member$ rule_152_st3 $?gen79 ) ) ) ) ( test ( eq ( class ?gen77 ) commited_152_st3 ) ) => ( calc ( bind $?gen82 ( create$ rule_152_st3-overruled $?gen80 $?gen81 ) ) ) ?gen77 <- ( commited_152_st3 ( negative-overruled $?gen82 ) )"))

([rule_152_st3-support] of derived-attribute-rule
   (pos-name rule_152_st3-support-gen781)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st3] ) ) ) ?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen76 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen77 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive-support $?gen79 & : ( not ( subseq-pos ( create$ rule_152_st3 ?gen75 ?gen76 $$$ $?gen79 ) ) ) ) ) ( test ( eq ( class ?gen77 ) commited_152_st3 ) ) => ( calc ( bind $?gen82 ( create$ rule_152_st3 ?gen75 ?gen76 $?gen79 ) ) ) ?gen77 <- ( commited_152_st3 ( positive-support $?gen82 ) )"))

([rule_152_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-dot-gen783)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st2] ) ) ) ?gen65 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st2 $? ) ) ( test ( eq ( class ?gen65 ) commited_152_st2 ) ) ( not ( and ?gen72 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( commited_152_st2 ( negative ~ 2 ) ( positive-overruled $?gen67 & : ( not ( member$ rule_152_st2 $?gen67 ) ) ) ) ) ) => ?gen65 <- ( commited_152_st2 ( positive 0 ) )"))

([rule_152_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-gen785)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st2] ) ) ) ?gen72 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen67 & : ( not ( member$ rule_152_st2 $?gen67 ) ) ) ) ( test ( eq ( class ?gen65 ) commited_152_st2 ) ) => ?gen65 <- ( commited_152_st2 ( positive 1 ) ( positive-derivator rule_152_st2 ?gen72 ?gen74 ) )"))

([rule_152_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-dot-gen787)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st2] ) ) ) ?gen65 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen68 ) ( negative-overruled $?gen69 & : ( subseq-pos ( create$ rule_152_st2-overruled $?gen68 $$$ $?gen69 ) ) ) ) ( test ( eq ( class ?gen65 ) commited_152_st2 ) ) ( not ( and ?gen72 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( commited_152_st2 ( positive-defeated $?gen67 & : ( not ( member$ rule_152_st2 $?gen67 ) ) ) ) ) ) => ( calc ( bind $?gen70 ( delete-member$ $?gen69 ( create$ rule_152_st2-overruled $?gen68 ) ) ) ) ?gen65 <- ( commited_152_st2 ( negative-overruled $?gen70 ) )"))

([rule_152_st2-overruled] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-gen789)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st2] ) ) ) ?gen72 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen68 ) ( negative-overruled $?gen69 & : ( not ( subseq-pos ( create$ rule_152_st2-overruled $?gen68 $$$ $?gen69 ) ) ) ) ( positive-defeated $?gen67 & : ( not ( member$ rule_152_st2 $?gen67 ) ) ) ) ( test ( eq ( class ?gen65 ) commited_152_st2 ) ) => ( calc ( bind $?gen70 ( create$ rule_152_st2-overruled $?gen68 $?gen69 ) ) ) ?gen65 <- ( commited_152_st2 ( negative-overruled $?gen70 ) )"))

([rule_152_st2-support] of derived-attribute-rule
   (pos-name rule_152_st2-support-gen791)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st2] ) ) ) ?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ?gen65 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive-support $?gen67 & : ( not ( subseq-pos ( create$ rule_152_st2 ?gen63 ?gen64 $$$ $?gen67 ) ) ) ) ) ( test ( eq ( class ?gen65 ) commited_152_st2 ) ) => ( calc ( bind $?gen70 ( create$ rule_152_st2 ?gen63 ?gen64 $?gen67 ) ) ) ?gen65 <- ( commited_152_st2 ( positive-support $?gen70 ) )"))

([rule_152_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-dot-gen793)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st1] ) ) ) ?gen53 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st1 $? ) ) ( test ( eq ( class ?gen53 ) commited_152_st1 ) ) ( not ( and ?gen60 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( commited_152_st1 ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule_152_st1 $?gen55 ) ) ) ) ) ) => ?gen53 <- ( commited_152_st1 ( positive 0 ) )"))

([rule_152_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-gen795)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st1] ) ) ) ?gen60 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule_152_st1 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) commited_152_st1 ) ) => ?gen53 <- ( commited_152_st1 ( positive 1 ) ( positive-derivator rule_152_st1 ?gen60 ?gen62 ) )"))

([rule_152_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-dot-gen797)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st1] ) ) ) ?gen53 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( subseq-pos ( create$ rule_152_st1-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( test ( eq ( class ?gen53 ) commited_152_st1 ) ) ( not ( and ?gen60 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( commited_152_st1 ( positive-defeated $?gen55 & : ( not ( member$ rule_152_st1 $?gen55 ) ) ) ) ) ) => ( calc ( bind $?gen58 ( delete-member$ $?gen57 ( create$ rule_152_st1-overruled $?gen56 ) ) ) ) ?gen53 <- ( commited_152_st1 ( negative-overruled $?gen58 ) )"))

([rule_152_st1-overruled] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-gen799)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st1] ) ) ) ?gen60 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( not ( subseq-pos ( create$ rule_152_st1-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( positive-defeated $?gen55 & : ( not ( member$ rule_152_st1 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) commited_152_st1 ) ) => ( calc ( bind $?gen58 ( create$ rule_152_st1-overruled $?gen56 $?gen57 ) ) ) ?gen53 <- ( commited_152_st1 ( negative-overruled $?gen58 ) )"))

([rule_152_st1-support] of derived-attribute-rule
   (pos-name rule_152_st1-support-gen801)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st1] ) ) ) ?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen53 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive-support $?gen55 & : ( not ( subseq-pos ( create$ rule_152_st1 ?gen51 ?gen52 $$$ $?gen55 ) ) ) ) ) ( test ( eq ( class ?gen53 ) commited_152_st1 ) ) => ( calc ( bind $?gen58 ( create$ rule_152_st1 ?gen51 ?gen52 $?gen55 ) ) ) ?gen53 <- ( commited_152_st1 ( positive-support $?gen58 ) )"))

([rule_151_st2_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st2_2-defeasibly-dot-gen803)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st2_2] ) ) ) ?gen41 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st2_2 $? ) ) ( test ( eq ( class ?gen41 ) commited_151_st2 ) ) ( not ( and ?gen48 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( commited_151_st2 ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule_151_st2_2 $?gen43 ) ) ) ) ) ) => ?gen41 <- ( commited_151_st2 ( positive 0 ) )"))

([rule_151_st2_2-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st2_2-defeasibly-gen805)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st2_2] ) ) ) ?gen48 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule_151_st2_2 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) commited_151_st2 ) ) => ?gen41 <- ( commited_151_st2 ( positive 1 ) ( positive-derivator rule_151_st2_2 ?gen48 ?gen50 ) )"))

([rule_151_st2_2-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st2_2-overruled-dot-gen807)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st2_2] ) ) ) ?gen41 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( subseq-pos ( create$ rule_151_st2_2-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( test ( eq ( class ?gen41 ) commited_151_st2 ) ) ( not ( and ?gen48 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( commited_151_st2 ( positive-defeated $?gen43 & : ( not ( member$ rule_151_st2_2 $?gen43 ) ) ) ) ) ) => ( calc ( bind $?gen46 ( delete-member$ $?gen45 ( create$ rule_151_st2_2-overruled $?gen44 ) ) ) ) ?gen41 <- ( commited_151_st2 ( negative-overruled $?gen46 ) )"))

([rule_151_st2_2-overruled] of derived-attribute-rule
   (pos-name rule_151_st2_2-overruled-gen809)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st2_2] ) ) ) ?gen48 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( not ( subseq-pos ( create$ rule_151_st2_2-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( positive-defeated $?gen43 & : ( not ( member$ rule_151_st2_2 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) commited_151_st2 ) ) => ( calc ( bind $?gen46 ( create$ rule_151_st2_2-overruled $?gen44 $?gen45 ) ) ) ?gen41 <- ( commited_151_st2 ( negative-overruled $?gen46 ) )"))

([rule_151_st2_2-support] of derived-attribute-rule
   (pos-name rule_151_st2_2-support-gen811)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st2_2] ) ) ) ?gen39 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ?gen41 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive-support $?gen43 & : ( not ( subseq-pos ( create$ rule_151_st2_2 ?gen39 ?gen40 $$$ $?gen43 ) ) ) ) ) ( test ( eq ( class ?gen41 ) commited_151_st2 ) ) => ( calc ( bind $?gen46 ( create$ rule_151_st2_2 ?gen39 ?gen40 $?gen43 ) ) ) ?gen41 <- ( commited_151_st2 ( positive-support $?gen46 ) )"))

([rule_151_st2_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st2_1-defeasibly-dot-gen813)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st2_1] ) ) ) ?gen29 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st2_1 $? ) ) ( test ( eq ( class ?gen29 ) commited_151_st2 ) ) ( not ( and ?gen36 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_151_st2 ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_151_st2_1 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( commited_151_st2 ( positive 0 ) )"))

([rule_151_st2_1-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st2_1-defeasibly-gen815)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st2_1] ) ) ) ?gen36 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule_151_st2_1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_151_st2 ) ) => ?gen29 <- ( commited_151_st2 ( positive 1 ) ( positive-derivator rule_151_st2_1 ?gen36 ?gen38 ) )"))

([rule_151_st2_1-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st2_1-overruled-dot-gen817)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st2_1] ) ) ) ?gen29 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule_151_st2_1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_151_st2 ) ) ( not ( and ?gen36 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_151_st2 ( positive-defeated $?gen31 & : ( not ( member$ rule_151_st2_1 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule_151_st2_1-overruled $?gen32 ) ) ) ) ?gen29 <- ( commited_151_st2 ( negative-overruled $?gen34 ) )"))

([rule_151_st2_1-overruled] of derived-attribute-rule
   (pos-name rule_151_st2_1-overruled-gen819)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st2_1] ) ) ) ?gen36 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule_151_st2_1-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule_151_st2_1 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) commited_151_st2 ) ) => ( calc ( bind $?gen34 ( create$ rule_151_st2_1-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( commited_151_st2 ( negative-overruled $?gen34 ) )"))

([rule_151_st2_1-support] of derived-attribute-rule
   (pos-name rule_151_st2_1-support-gen821)
   (depends-on declare commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st2_1] ) ) ) ?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ?gen29 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule_151_st2_1 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) commited_151_st2 ) ) => ( calc ( bind $?gen34 ( create$ rule_151_st2_1 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( commited_151_st2 ( positive-support $?gen34 ) )"))

([rule_151_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-dot-gen823)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st1 $? ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( commited_151_st1 ( positive 0 ) )"))

([rule_151_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-gen825)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ?gen17 <- ( commited_151_st1 ( positive 1 ) ( positive-derivator rule_151_st1 ?gen24 ?gen26 ) )"))

([rule_151_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-dot-gen827)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule_151_st1-overruled $?gen20 ) ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-overruled] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-gen829)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-support] of derived-attribute-rule
   (pos-name rule_151_st1-support-gen831)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st1] ) ) ) ?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule_151_st1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-support $?gen22 ) )"))

([kazna_cl_10_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_10_st1_max-deductive-gen442)
   (depends-on commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen399 <- ( commited_10_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 2 ) ) ) => ( kazna_zatvora_max ( value 2 ) )")
   (production-rule "( defrule kazna_cl_10_st1_max-deductive-gen442 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen399 ) ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 2 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_10_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_10_st1_min-deductive-gen441)
   (depends-on commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen390 <- ( commited_10_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_10_st1_min-deductive-gen441 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen390 ) ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_8_st1_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_max_novcana-deductive-gen440)
   (depends-on commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (deductive-rule "?gen381 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ) ) => ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) )")
   (production-rule "( defrule kazna_cl_8_st1_max_novcana-deductive-gen440 ( declare ( salience ( calc-salience novcana_kazna_8_st1_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen381 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st1_max ) ( value 18_minimalnih_zarada ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_max 18_minimalnih_zarada ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_max 18_minimalnih_zarada ) ) ) ( make-instance ?oid of novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ) )")
   (derived-class novcana_kazna_8_st1_max))

([kazna_cl_8_st1_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_min_novcana-deductive-gen439)
   (depends-on commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (deductive-rule "?gen372 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ) ) => ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) )")
   (production-rule "( defrule kazna_cl_8_st1_min_novcana-deductive-gen439 ( declare ( salience ( calc-salience novcana_kazna_8_st1_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen372 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st1_min ) ( value 3_minimalne_zarade ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_min 3_minimalne_zarade ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_min 3_minimalne_zarade ) ) ) ( make-instance ?oid of novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ) )")
   (derived-class novcana_kazna_8_st1_min))

([kazna_cl_8_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_max-deductive-gen438)
   (depends-on commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen363 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 1 ) ) ) => ( kazna_zatvora_max ( value 1 ) )")
   (production-rule "( defrule kazna_cl_8_st1_max-deductive-gen438 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen363 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 1 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 1 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_8_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_min-deductive-gen437)
   (depends-on commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen354 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_8_st1_min-deductive-gen437 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen354 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st3_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_max-deductive-gen436)
   (depends-on commited_376_st3 kazna_zatvora_cl_376_st3_max)
   (implies kazna_zatvora_cl_376_st3_max)
   (deductive-rule "?gen345 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_376_st3_max ( value 60 ) ) ) => ( kazna_zatvora_cl_376_st3_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st3_max-deductive-gen436 ( declare ( salience ( calc-salience kazna_zatvora_cl_376_st3_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen345 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_376_st3_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st3_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st3_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_376_st3_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_cl_376_st3_max))

([kazna_cl_376_st3_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_min-deductive-gen435)
   (depends-on commited_376_st3 kazna_zatvora_cl_376_st3_min)
   (implies kazna_zatvora_cl_376_st3_min)
   (deductive-rule "?gen336 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_376_st3_min ( value 6 ) ) ) => ( kazna_zatvora_cl_376_st3_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_376_st3_min-deductive-gen435 ( declare ( salience ( calc-salience kazna_zatvora_cl_376_st3_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen336 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_376_st3_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st3_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st3_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_376_st3_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_cl_376_st3_min))

([kazna_cl_376_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_max-deductive-gen434)
   (depends-on commited_376_st2 kazna_zatvora_cl_376_st2_max)
   (implies kazna_zatvora_cl_376_st2_max)
   (deductive-rule "?gen309 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_376_st2_max ( value 60 ) ) ) => ( kazna_zatvora_cl_376_st2_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st2_max-deductive-gen434 ( declare ( salience ( calc-salience kazna_zatvora_cl_376_st2_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen309 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_376_st2_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st2_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st2_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_376_st2_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_cl_376_st2_max))

([kazna_cl_376_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_min-deductive-gen433)
   (depends-on commited_376_st2 kazna_zatvora_cl_376_st2_min)
   (implies kazna_zatvora_cl_376_st2_min)
   (deductive-rule "?gen300 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_376_st2_min ( value 3 ) ) ) => ( kazna_zatvora_cl_376_st2_min ( value 3 ) )")
   (production-rule "( defrule kazna_cl_376_st2_min-deductive-gen433 ( declare ( salience ( calc-salience kazna_zatvora_cl_376_st2_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen300 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_376_st2_min ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st2_min 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_376_st2_min 3 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_376_st2_min ( value 3 ) ) )")
   (derived-class kazna_zatvora_cl_376_st2_min))

([kazna_cl_376_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_max-deductive-gen432)
   (depends-on commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen291 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 36 ) ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_376_st1_max-deductive-gen432 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen291 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_min-deductive-gen431)
   (depends-on commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen282 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_376_st1_min-deductive-gen431 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen282 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_152_st3-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st3-deductive-gen430)
   (depends-on commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (deductive-rule "?gen273 <- ( commited_152_st3 ( defendant ?Defendant ) ) ( not ( sudska_opomena ( value 1 ) ) ) => ( sudska_opomena ( value 1 ) )")
   (production-rule "( defrule kazna_cl_152_st3-deductive-gen430 ( declare ( salience ( calc-salience sudska_opomena ) ) ) ( run-deductive-rules ) ( object ( name ?gen273 ) ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a sudska_opomena ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ( make-instance ?oid of sudska_opomena ( value 1 ) ) )")
   (derived-class sudska_opomena))

([kazna_cl_152_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_max-deductive-gen429)
   (depends-on commited_152_st2 kazna_zatvora_cl_152_st2_max)
   (implies kazna_zatvora_cl_152_st2_max)
   (deductive-rule "?gen264 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_152_st2_max ( value 36 ) ) ) => ( kazna_zatvora_cl_152_st2_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_152_st2_max-deductive-gen429 ( declare ( salience ( calc-salience kazna_zatvora_cl_152_st2_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen264 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_152_st2_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_152_st2_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_152_st2_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_152_st2_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_cl_152_st2_max))

([kazna_cl_152_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_min-deductive-gen428)
   (depends-on commited_152_st2 kazna_zatvora_cl_152_st2_min)
   (implies kazna_zatvora_cl_152_st2_min)
   (deductive-rule "?gen255 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_152_st2_min ( value 0 ) ) ) => ( kazna_zatvora_cl_152_st2_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st2_min-deductive-gen428 ( declare ( salience ( calc-salience kazna_zatvora_cl_152_st2_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen255 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_152_st2_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_152_st2_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_152_st2_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_152_st2_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_cl_152_st2_min))

([kazna_cl_152_st1_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max_novcana-deductive-gen427)
   (depends-on commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (deductive-rule "?gen246 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_max ( value 8000 ) ) ) => ( novcana_kazna_152_st1_max ( value 8000 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max_novcana-deductive-gen427 ( declare ( salience ( calc-salience novcana_kazna_152_st1_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_max ) ( value 8000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_max ( value 8000 ) ) )")
   (derived-class novcana_kazna_152_st1_max))

([kazna_cl_152_st1_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min_novcana-deductive-gen426)
   (depends-on commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (deductive-rule "?gen237 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_min ( value 600 ) ) ) => ( novcana_kazna_152_st1_min ( value 600 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min_novcana-deductive-gen426 ( declare ( salience ( calc-salience novcana_kazna_152_st1_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_min ) ( value 600 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_min ( value 600 ) ) )")
   (derived-class novcana_kazna_152_st1_min))

([kazna_cl_152_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max-deductive-gen425)
   (depends-on commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen228 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 12 ) ) ) => ( kazna_zatvora_max ( value 12 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max-deductive-gen425 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 12 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_152_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min-deductive-gen424)
   (depends-on commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen219 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min-deductive-gen424 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_151_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_max-deductive-gen423)
   (depends-on commited_151_st2 kazna_zatvora_cl_151_st2_max)
   (implies kazna_zatvora_cl_151_st2_max)
   (deductive-rule "?gen192 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_151_st2_max ( value 96 ) ) ) => ( kazna_zatvora_cl_151_st2_max ( value 96 ) )")
   (production-rule "( defrule kazna_cl_151_st2_max-deductive-gen423 ( declare ( salience ( calc-salience kazna_zatvora_cl_151_st2_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen192 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_151_st2_max ) ( value 96 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_151_st2_max 96 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_151_st2_max 96 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_151_st2_max ( value 96 ) ) )")
   (derived-class kazna_zatvora_cl_151_st2_max))

([kazna_cl_151_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_min-deductive-gen422)
   (depends-on commited_151_st2 kazna_zatvora_cl_151_st2_min)
   (implies kazna_zatvora_cl_151_st2_min)
   (deductive-rule "?gen183 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_cl_151_st2_min ( value 12 ) ) ) => ( kazna_zatvora_cl_151_st2_min ( value 12 ) )")
   (production-rule "( defrule kazna_cl_151_st2_min-deductive-gen422 ( declare ( salience ( calc-salience kazna_zatvora_cl_151_st2_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen183 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_cl_151_st2_min ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_151_st2_min 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_cl_151_st2_min 12 ) ) ) ( make-instance ?oid of kazna_zatvora_cl_151_st2_min ( value 12 ) ) )")
   (derived-class kazna_zatvora_cl_151_st2_min))

([kazna_cl_151_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_max-deductive-gen421)
   (depends-on commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen174 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_151_st1_max-deductive-gen421 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_151_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_min-deductive-gen420)
   (depends-on commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen165 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 6 ) ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_151_st1_min-deductive-gen420 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_min))

([rule_10_st1-deductive] of ntm-deductive-rule
   (pos-name rule_10_st1-deductive-gen419)
   (depends-on lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (deductive-rule "?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen151 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen152 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ( not ( commited_10_st1 ( defendant ?Defendant ) ) ) => ( commited_10_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_10_st1-deductive-gen419 ( declare ( salience ( calc-salience commited_10_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( object ( name ?gen151 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ( object ( name ?gen152 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ( not ( object ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_10_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_10_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_10_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_10_st1))

([rule_8_st1-deductive] of ntm-deductive-rule
   (pos-name rule_8_st1-deductive-gen418)
   (depends-on lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (deductive-rule "?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen136 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen137 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( commited_8_st1 ( defendant ?Defendant ) ) ) => ( commited_8_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_8_st1-deductive-gen418 ( declare ( salience ( calc-salience commited_8_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( object ( name ?gen136 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ( object ( name ?gen137 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( object ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_8_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_8_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_8_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_8_st1))

([rule_376_st3-deductive] of ntm-deductive-rule
   (pos-name rule_376_st3-deductive-gen417)
   (depends-on lc:case commited_376_st3)
   (implies commited_376_st3)
   (deductive-rule "?gen126 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( commited_376_st3 ( defendant ?Defendant ) ) ) => ( commited_376_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st3-deductive-gen417 ( declare ( salience ( calc-salience commited_376_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( object ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st3))

([rule_376_st2_2-deductive] of ntm-deductive-rule
   (pos-name rule_376_st2_2-deductive-gen416)
   (depends-on commited_376_st1 lc:case commited_376_st2)
   (implies commited_376_st2)
   (deductive-rule "?gen114 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( commited_376_st2 ( defendant ?Defendant ) ) ) => ( commited_376_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st2_2-deductive-gen416 ( declare ( salience ( calc-salience commited_376_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen115 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( object ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st2))

([rule_376_st2_1-deductive] of ntm-deductive-rule
   (pos-name rule_376_st2_1-deductive-gen415)
   (depends-on lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (deductive-rule "?gen102 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( commited_376_st2 ( defendant ?Defendant ) ) ) => ( commited_376_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st2_1-deductive-gen415 ( declare ( salience ( calc-salience commited_376_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( object ( name ?gen103 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st2))

([rule_376_st1-deductive] of ntm-deductive-rule
   (pos-name rule_376_st1-deductive-gen414)
   (depends-on lc:case lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (deductive-rule "?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen88 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen89 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ) ( not ( commited_376_st1 ( defendant ?Defendant ) ) ) => ( commited_376_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st1-deductive-gen414 ( declare ( salience ( calc-salience commited_376_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ( object ( name ?gen88 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( object ( name ?gen89 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"no\" ) ) ( not ( object ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st1))

([rule_152_st3-deductive] of ntm-deductive-rule
   (pos-name rule_152_st3-deductive-gen413)
   (depends-on commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (deductive-rule "?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen76 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( commited_152_st3 ( defendant ?Defendant ) ) ) => ( commited_152_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st3-deductive-gen413 ( declare ( salience ( calc-salience commited_152_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen75 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( object ( name ?gen76 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( object ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st3))

([rule_152_st2-deductive] of ntm-deductive-rule
   (pos-name rule_152_st2-deductive-gen412)
   (depends-on commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (deductive-rule "?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( commited_152_st2 ( defendant ?Defendant ) ) ) => ( commited_152_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st2-deductive-gen412 ( declare ( salience ( calc-salience commited_152_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen64 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( object ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st2))

([rule_152_st1-deductive] of ntm-deductive-rule
   (pos-name rule_152_st1-deductive-gen411)
   (depends-on lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (deductive-rule "?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( commited_152_st1 ( defendant ?Defendant ) ) ) => ( commited_152_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st1-deductive-gen411 ( declare ( salience ( calc-salience commited_152_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen52 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st1))

([rule_151_st2_2-deductive] of ntm-deductive-rule
   (pos-name rule_151_st2_2-deductive-gen410)
   (depends-on commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (deductive-rule "?gen39 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ( not ( commited_151_st2 ( defendant ?Defendant ) ) ) => ( commited_151_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st2_2-deductive-gen410 ( declare ( salience ( calc-salience commited_151_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen40 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ( not ( object ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st2))

([rule_151_st2_1-deductive] of ntm-deductive-rule
   (pos-name rule_151_st2_1-deductive-gen409)
   (depends-on commited_151_st1 lc:case commited_151_st2)
   (implies commited_151_st2)
   (deductive-rule "?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ( not ( commited_151_st2 ( defendant ?Defendant ) ) ) => ( commited_151_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st2_1-deductive-gen409 ( declare ( salience ( calc-salience commited_151_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ( not ( object ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st2))

([rule_151_st1-deductive] of ntm-deductive-rule
   (pos-name rule_151_st1-deductive-gen408)
   (depends-on lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( commited_151_st1 ( defendant ?Defendant ) ) ) => ( commited_151_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st1-deductive-gen408 ( declare ( salience ( calc-salience commited_151_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st1))

