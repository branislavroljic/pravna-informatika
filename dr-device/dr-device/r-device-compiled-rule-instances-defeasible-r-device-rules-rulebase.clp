([kazna_cl_10_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-defeasibly-dot-gen440)
   (depends-on declare kazna_zatvora_max commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_10_st1_max] ) ) ) ?gen394 <- ( kazna_zatvora_max ( value 2 ) ( positive 1 ) ( positive-derivator kazna_cl_10_st1_max $? ) ) ( test ( eq ( class ?gen394 ) kazna_zatvora_max ) ) ( not ( and ?gen401 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen396 & : ( not ( member$ kazna_cl_10_st1_max $?gen396 ) ) ) ) ) ) => ?gen394 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_10_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-defeasibly-gen442)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_10_st1_max] ) ) ) ?gen401 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( kazna_zatvora_max ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen396 & : ( not ( member$ kazna_cl_10_st1_max $?gen396 ) ) ) ) ( test ( eq ( class ?gen394 ) kazna_zatvora_max ) ) => ?gen394 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_10_st1_max ?gen401 ) )"))

([kazna_cl_10_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-overruled-dot-gen444)
   (depends-on declare kazna_zatvora_max commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_10_st1_max] ) ) ) ?gen394 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen397 ) ( negative-overruled $?gen398 & : ( subseq-pos ( create$ kazna_cl_10_st1_max-overruled $?gen397 $$$ $?gen398 ) ) ) ) ( test ( eq ( class ?gen394 ) kazna_zatvora_max ) ) ( not ( and ?gen401 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( kazna_zatvora_max ( positive-defeated $?gen396 & : ( not ( member$ kazna_cl_10_st1_max $?gen396 ) ) ) ) ) ) => ( calc ( bind $?gen399 ( delete-member$ $?gen398 ( create$ kazna_cl_10_st1_max-overruled $?gen397 ) ) ) ) ?gen394 <- ( kazna_zatvora_max ( negative-overruled $?gen399 ) )"))

([kazna_cl_10_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-overruled-gen446)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_10_st1_max] ) ) ) ?gen401 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen400 & : ( >= ?gen400 1 ) ) ) ?gen394 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen397 ) ( negative-overruled $?gen398 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_max-overruled $?gen397 $$$ $?gen398 ) ) ) ) ( positive-defeated $?gen396 & : ( not ( member$ kazna_cl_10_st1_max $?gen396 ) ) ) ) ( test ( eq ( class ?gen394 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen399 ( create$ kazna_cl_10_st1_max-overruled $?gen397 $?gen398 ) ) ) ?gen394 <- ( kazna_zatvora_max ( negative-overruled $?gen399 ) )"))

([kazna_cl_10_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_max-support-gen448)
   (depends-on declare commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_10_st1_max] ) ) ) ?gen393 <- ( commited_10_st1 ( defendant ?Defendant ) ) ?gen394 <- ( kazna_zatvora_max ( value 2 ) ( positive-support $?gen396 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_max ?gen393 $$$ $?gen396 ) ) ) ) ) ( test ( eq ( class ?gen394 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen399 ( create$ kazna_cl_10_st1_max ?gen393 $?gen396 ) ) ) ?gen394 <- ( kazna_zatvora_max ( positive-support $?gen399 ) )"))

([kazna_cl_10_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-defeasibly-dot-gen450)
   (depends-on declare kazna_zatvora_min commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_10_st1_min] ) ) ) ?gen385 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_10_st1_min $? ) ) ( test ( eq ( class ?gen385 ) kazna_zatvora_min ) ) ( not ( and ?gen392 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen387 & : ( not ( member$ kazna_cl_10_st1_min $?gen387 ) ) ) ) ) ) => ?gen385 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_10_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-defeasibly-gen452)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_10_st1_min] ) ) ) ?gen392 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen387 & : ( not ( member$ kazna_cl_10_st1_min $?gen387 ) ) ) ) ( test ( eq ( class ?gen385 ) kazna_zatvora_min ) ) => ?gen385 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_10_st1_min ?gen392 ) )"))

([kazna_cl_10_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-overruled-dot-gen454)
   (depends-on declare kazna_zatvora_min commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_10_st1_min] ) ) ) ?gen385 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen388 ) ( negative-overruled $?gen389 & : ( subseq-pos ( create$ kazna_cl_10_st1_min-overruled $?gen388 $$$ $?gen389 ) ) ) ) ( test ( eq ( class ?gen385 ) kazna_zatvora_min ) ) ( not ( and ?gen392 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( kazna_zatvora_min ( positive-defeated $?gen387 & : ( not ( member$ kazna_cl_10_st1_min $?gen387 ) ) ) ) ) ) => ( calc ( bind $?gen390 ( delete-member$ $?gen389 ( create$ kazna_cl_10_st1_min-overruled $?gen388 ) ) ) ) ?gen385 <- ( kazna_zatvora_min ( negative-overruled $?gen390 ) )"))

([kazna_cl_10_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-overruled-gen456)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_10_st1_min] ) ) ) ?gen392 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive ?gen391 & : ( >= ?gen391 1 ) ) ) ?gen385 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen388 ) ( negative-overruled $?gen389 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_min-overruled $?gen388 $$$ $?gen389 ) ) ) ) ( positive-defeated $?gen387 & : ( not ( member$ kazna_cl_10_st1_min $?gen387 ) ) ) ) ( test ( eq ( class ?gen385 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen390 ( create$ kazna_cl_10_st1_min-overruled $?gen388 $?gen389 ) ) ) ?gen385 <- ( kazna_zatvora_min ( negative-overruled $?gen390 ) )"))

([kazna_cl_10_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_10_st1_min-support-gen458)
   (depends-on declare commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_10_st1_min] ) ) ) ?gen384 <- ( commited_10_st1 ( defendant ?Defendant ) ) ?gen385 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen387 & : ( not ( subseq-pos ( create$ kazna_cl_10_st1_min ?gen384 $$$ $?gen387 ) ) ) ) ) ( test ( eq ( class ?gen385 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen390 ( create$ kazna_cl_10_st1_min ?gen384 $?gen387 ) ) ) ?gen385 <- ( kazna_zatvora_min ( positive-support $?gen390 ) )"))

([kazna_cl_8_st2_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max_novcana-defeasibly-dot-gen460)
   (depends-on declare novcana_kazna_8_st2_max commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st2_max_novcana] ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ( positive 1 ) ( positive-derivator kazna_cl_8_st2_max_novcana $? ) ) ( test ( eq ( class ?gen376 ) novcana_kazna_8_st2_max ) ) ( not ( and ?gen383 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( negative ~ 2 ) ( positive-overruled $?gen378 & : ( not ( member$ kazna_cl_8_st2_max_novcana $?gen378 ) ) ) ) ) ) => ?gen376 <- ( novcana_kazna_8_st2_max ( positive 0 ) )"))

([kazna_cl_8_st2_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max_novcana-defeasibly-gen462)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st2_max_novcana] ) ) ) ?gen383 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen378 & : ( not ( member$ kazna_cl_8_st2_max_novcana $?gen378 ) ) ) ) ( test ( eq ( class ?gen376 ) novcana_kazna_8_st2_max ) ) => ?gen376 <- ( novcana_kazna_8_st2_max ( positive 1 ) ( positive-derivator kazna_cl_8_st2_max_novcana ?gen383 ) )"))

([kazna_cl_8_st2_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max_novcana-overruled-dot-gen464)
   (depends-on declare novcana_kazna_8_st2_max commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st2_max_novcana] ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ( negative-support $?gen379 ) ( negative-overruled $?gen380 & : ( subseq-pos ( create$ kazna_cl_8_st2_max_novcana-overruled $?gen379 $$$ $?gen380 ) ) ) ) ( test ( eq ( class ?gen376 ) novcana_kazna_8_st2_max ) ) ( not ( and ?gen383 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( positive-defeated $?gen378 & : ( not ( member$ kazna_cl_8_st2_max_novcana $?gen378 ) ) ) ) ) ) => ( calc ( bind $?gen381 ( delete-member$ $?gen380 ( create$ kazna_cl_8_st2_max_novcana-overruled $?gen379 ) ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( negative-overruled $?gen381 ) )"))

([kazna_cl_8_st2_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max_novcana-overruled-gen466)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st2_max_novcana] ) ) ) ?gen383 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen382 & : ( >= ?gen382 1 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ( negative-support $?gen379 ) ( negative-overruled $?gen380 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_max_novcana-overruled $?gen379 $$$ $?gen380 ) ) ) ) ( positive-defeated $?gen378 & : ( not ( member$ kazna_cl_8_st2_max_novcana $?gen378 ) ) ) ) ( test ( eq ( class ?gen376 ) novcana_kazna_8_st2_max ) ) => ( calc ( bind $?gen381 ( create$ kazna_cl_8_st2_max_novcana-overruled $?gen379 $?gen380 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( negative-overruled $?gen381 ) )"))

([kazna_cl_8_st2_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max_novcana-support-gen468)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st2_max_novcana] ) ) ) ?gen375 <- ( commited_8_st2 ( defendant ?Defendant ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ( positive-support $?gen378 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_max_novcana ?gen375 $$$ $?gen378 ) ) ) ) ) ( test ( eq ( class ?gen376 ) novcana_kazna_8_st2_max ) ) => ( calc ( bind $?gen381 ( create$ kazna_cl_8_st2_max_novcana ?gen375 $?gen378 ) ) ) ?gen376 <- ( novcana_kazna_8_st2_max ( positive-support $?gen381 ) )"))

([kazna_cl_8_st2_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min_novcana-defeasibly-dot-gen470)
   (depends-on declare novcana_kazna_8_st2_min commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st2_min_novcana] ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ( positive 1 ) ( positive-derivator kazna_cl_8_st2_min_novcana $? ) ) ( test ( eq ( class ?gen367 ) novcana_kazna_8_st2_min ) ) ( not ( and ?gen374 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( negative ~ 2 ) ( positive-overruled $?gen369 & : ( not ( member$ kazna_cl_8_st2_min_novcana $?gen369 ) ) ) ) ) ) => ?gen367 <- ( novcana_kazna_8_st2_min ( positive 0 ) )"))

([kazna_cl_8_st2_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min_novcana-defeasibly-gen472)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st2_min_novcana] ) ) ) ?gen374 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen369 & : ( not ( member$ kazna_cl_8_st2_min_novcana $?gen369 ) ) ) ) ( test ( eq ( class ?gen367 ) novcana_kazna_8_st2_min ) ) => ?gen367 <- ( novcana_kazna_8_st2_min ( positive 1 ) ( positive-derivator kazna_cl_8_st2_min_novcana ?gen374 ) )"))

([kazna_cl_8_st2_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min_novcana-overruled-dot-gen474)
   (depends-on declare novcana_kazna_8_st2_min commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st2_min_novcana] ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ( negative-support $?gen370 ) ( negative-overruled $?gen371 & : ( subseq-pos ( create$ kazna_cl_8_st2_min_novcana-overruled $?gen370 $$$ $?gen371 ) ) ) ) ( test ( eq ( class ?gen367 ) novcana_kazna_8_st2_min ) ) ( not ( and ?gen374 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( positive-defeated $?gen369 & : ( not ( member$ kazna_cl_8_st2_min_novcana $?gen369 ) ) ) ) ) ) => ( calc ( bind $?gen372 ( delete-member$ $?gen371 ( create$ kazna_cl_8_st2_min_novcana-overruled $?gen370 ) ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( negative-overruled $?gen372 ) )"))

([kazna_cl_8_st2_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min_novcana-overruled-gen476)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st2_min_novcana] ) ) ) ?gen374 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen373 & : ( >= ?gen373 1 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ( negative-support $?gen370 ) ( negative-overruled $?gen371 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_min_novcana-overruled $?gen370 $$$ $?gen371 ) ) ) ) ( positive-defeated $?gen369 & : ( not ( member$ kazna_cl_8_st2_min_novcana $?gen369 ) ) ) ) ( test ( eq ( class ?gen367 ) novcana_kazna_8_st2_min ) ) => ( calc ( bind $?gen372 ( create$ kazna_cl_8_st2_min_novcana-overruled $?gen370 $?gen371 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( negative-overruled $?gen372 ) )"))

([kazna_cl_8_st2_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min_novcana-support-gen478)
   (depends-on declare commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st2_min_novcana] ) ) ) ?gen366 <- ( commited_8_st2 ( defendant ?Defendant ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ( positive-support $?gen369 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_min_novcana ?gen366 $$$ $?gen369 ) ) ) ) ) ( test ( eq ( class ?gen367 ) novcana_kazna_8_st2_min ) ) => ( calc ( bind $?gen372 ( create$ kazna_cl_8_st2_min_novcana ?gen366 $?gen369 ) ) ) ?gen367 <- ( novcana_kazna_8_st2_min ( positive-support $?gen372 ) )"))

([kazna_cl_8_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max-defeasibly-dot-gen480)
   (depends-on declare kazna_zatvora_max commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st2_max] ) ) ) ?gen358 <- ( kazna_zatvora_max ( value 2 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st2_max $? ) ) ( test ( eq ( class ?gen358 ) kazna_zatvora_max ) ) ( not ( and ?gen365 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen360 & : ( not ( member$ kazna_cl_8_st2_max $?gen360 ) ) ) ) ) ) => ?gen358 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_8_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max-defeasibly-gen482)
   (depends-on declare commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st2_max] ) ) ) ?gen365 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( kazna_zatvora_max ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen360 & : ( not ( member$ kazna_cl_8_st2_max $?gen360 ) ) ) ) ( test ( eq ( class ?gen358 ) kazna_zatvora_max ) ) => ?gen358 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_8_st2_max ?gen365 ) )"))

([kazna_cl_8_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max-overruled-dot-gen484)
   (depends-on declare kazna_zatvora_max commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st2_max] ) ) ) ?gen358 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen361 ) ( negative-overruled $?gen362 & : ( subseq-pos ( create$ kazna_cl_8_st2_max-overruled $?gen361 $$$ $?gen362 ) ) ) ) ( test ( eq ( class ?gen358 ) kazna_zatvora_max ) ) ( not ( and ?gen365 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( kazna_zatvora_max ( positive-defeated $?gen360 & : ( not ( member$ kazna_cl_8_st2_max $?gen360 ) ) ) ) ) ) => ( calc ( bind $?gen363 ( delete-member$ $?gen362 ( create$ kazna_cl_8_st2_max-overruled $?gen361 ) ) ) ) ?gen358 <- ( kazna_zatvora_max ( negative-overruled $?gen363 ) )"))

([kazna_cl_8_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max-overruled-gen486)
   (depends-on declare commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st2_max] ) ) ) ?gen365 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen364 & : ( >= ?gen364 1 ) ) ) ?gen358 <- ( kazna_zatvora_max ( value 2 ) ( negative-support $?gen361 ) ( negative-overruled $?gen362 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_max-overruled $?gen361 $$$ $?gen362 ) ) ) ) ( positive-defeated $?gen360 & : ( not ( member$ kazna_cl_8_st2_max $?gen360 ) ) ) ) ( test ( eq ( class ?gen358 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen363 ( create$ kazna_cl_8_st2_max-overruled $?gen361 $?gen362 ) ) ) ?gen358 <- ( kazna_zatvora_max ( negative-overruled $?gen363 ) )"))

([kazna_cl_8_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_max-support-gen488)
   (depends-on declare commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st2_max] ) ) ) ?gen357 <- ( commited_8_st2 ( defendant ?Defendant ) ) ?gen358 <- ( kazna_zatvora_max ( value 2 ) ( positive-support $?gen360 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_max ?gen357 $$$ $?gen360 ) ) ) ) ) ( test ( eq ( class ?gen358 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen363 ( create$ kazna_cl_8_st2_max ?gen357 $?gen360 ) ) ) ?gen358 <- ( kazna_zatvora_max ( positive-support $?gen363 ) )"))

([kazna_cl_8_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min-defeasibly-dot-gen490)
   (depends-on declare kazna_zatvora_min commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st2_min] ) ) ) ?gen349 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st2_min $? ) ) ( test ( eq ( class ?gen349 ) kazna_zatvora_min ) ) ( not ( and ?gen356 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen351 & : ( not ( member$ kazna_cl_8_st2_min $?gen351 ) ) ) ) ) ) => ?gen349 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_8_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min-defeasibly-gen492)
   (depends-on declare commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st2_min] ) ) ) ?gen356 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen351 & : ( not ( member$ kazna_cl_8_st2_min $?gen351 ) ) ) ) ( test ( eq ( class ?gen349 ) kazna_zatvora_min ) ) => ?gen349 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_8_st2_min ?gen356 ) )"))

([kazna_cl_8_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min-overruled-dot-gen494)
   (depends-on declare kazna_zatvora_min commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st2_min] ) ) ) ?gen349 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen352 ) ( negative-overruled $?gen353 & : ( subseq-pos ( create$ kazna_cl_8_st2_min-overruled $?gen352 $$$ $?gen353 ) ) ) ) ( test ( eq ( class ?gen349 ) kazna_zatvora_min ) ) ( not ( and ?gen356 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( kazna_zatvora_min ( positive-defeated $?gen351 & : ( not ( member$ kazna_cl_8_st2_min $?gen351 ) ) ) ) ) ) => ( calc ( bind $?gen354 ( delete-member$ $?gen353 ( create$ kazna_cl_8_st2_min-overruled $?gen352 ) ) ) ) ?gen349 <- ( kazna_zatvora_min ( negative-overruled $?gen354 ) )"))

([kazna_cl_8_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min-overruled-gen496)
   (depends-on declare commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st2_min] ) ) ) ?gen356 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive ?gen355 & : ( >= ?gen355 1 ) ) ) ?gen349 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen352 ) ( negative-overruled $?gen353 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_min-overruled $?gen352 $$$ $?gen353 ) ) ) ) ( positive-defeated $?gen351 & : ( not ( member$ kazna_cl_8_st2_min $?gen351 ) ) ) ) ( test ( eq ( class ?gen349 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen354 ( create$ kazna_cl_8_st2_min-overruled $?gen352 $?gen353 ) ) ) ?gen349 <- ( kazna_zatvora_min ( negative-overruled $?gen354 ) )"))

([kazna_cl_8_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st2_min-support-gen498)
   (depends-on declare commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st2_min] ) ) ) ?gen348 <- ( commited_8_st2 ( defendant ?Defendant ) ) ?gen349 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen351 & : ( not ( subseq-pos ( create$ kazna_cl_8_st2_min ?gen348 $$$ $?gen351 ) ) ) ) ) ( test ( eq ( class ?gen349 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen354 ( create$ kazna_cl_8_st2_min ?gen348 $?gen351 ) ) ) ?gen349 <- ( kazna_zatvora_min ( positive-support $?gen354 ) )"))

([kazna_cl_8_st1_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-defeasibly-dot-gen500)
   (depends-on declare novcana_kazna_8_st1_max commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max_novcana $? ) ) ( test ( eq ( class ?gen340 ) novcana_kazna_8_st1_max ) ) ( not ( and ?gen347 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( negative ~ 2 ) ( positive-overruled $?gen342 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen342 ) ) ) ) ) ) => ?gen340 <- ( novcana_kazna_8_st1_max ( positive 0 ) )"))

([kazna_cl_8_st1_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-defeasibly-gen502)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen347 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen342 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen342 ) ) ) ) ( test ( eq ( class ?gen340 ) novcana_kazna_8_st1_max ) ) => ?gen340 <- ( novcana_kazna_8_st1_max ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max_novcana ?gen347 ) )"))

([kazna_cl_8_st1_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-overruled-dot-gen504)
   (depends-on declare novcana_kazna_8_st1_max commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( negative-support $?gen343 ) ( negative-overruled $?gen344 & : ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen343 $$$ $?gen344 ) ) ) ) ( test ( eq ( class ?gen340 ) novcana_kazna_8_st1_max ) ) ( not ( and ?gen347 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( positive-defeated $?gen342 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen342 ) ) ) ) ) ) => ( calc ( bind $?gen345 ( delete-member$ $?gen344 ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen343 ) ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( negative-overruled $?gen345 ) )"))

([kazna_cl_8_st1_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-overruled-gen506)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen347 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen346 & : ( >= ?gen346 1 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( negative-support $?gen343 ) ( negative-overruled $?gen344 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen343 $$$ $?gen344 ) ) ) ) ( positive-defeated $?gen342 & : ( not ( member$ kazna_cl_8_st1_max_novcana $?gen342 ) ) ) ) ( test ( eq ( class ?gen340 ) novcana_kazna_8_st1_max ) ) => ( calc ( bind $?gen345 ( create$ kazna_cl_8_st1_max_novcana-overruled $?gen343 $?gen344 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( negative-overruled $?gen345 ) )"))

([kazna_cl_8_st1_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max_novcana-support-gen508)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_max_novcana] ) ) ) ?gen339 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ( positive-support $?gen342 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max_novcana ?gen339 $$$ $?gen342 ) ) ) ) ) ( test ( eq ( class ?gen340 ) novcana_kazna_8_st1_max ) ) => ( calc ( bind $?gen345 ( create$ kazna_cl_8_st1_max_novcana ?gen339 $?gen342 ) ) ) ?gen340 <- ( novcana_kazna_8_st1_max ( positive-support $?gen345 ) )"))

([kazna_cl_8_st1_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-defeasibly-dot-gen510)
   (depends-on declare novcana_kazna_8_st1_min commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min_novcana $? ) ) ( test ( eq ( class ?gen331 ) novcana_kazna_8_st1_min ) ) ( not ( and ?gen338 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( negative ~ 2 ) ( positive-overruled $?gen333 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen333 ) ) ) ) ) ) => ?gen331 <- ( novcana_kazna_8_st1_min ( positive 0 ) )"))

([kazna_cl_8_st1_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-defeasibly-gen512)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen338 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen333 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen333 ) ) ) ) ( test ( eq ( class ?gen331 ) novcana_kazna_8_st1_min ) ) => ?gen331 <- ( novcana_kazna_8_st1_min ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min_novcana ?gen338 ) )"))

([kazna_cl_8_st1_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-overruled-dot-gen514)
   (depends-on declare novcana_kazna_8_st1_min commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( negative-support $?gen334 ) ( negative-overruled $?gen335 & : ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen334 $$$ $?gen335 ) ) ) ) ( test ( eq ( class ?gen331 ) novcana_kazna_8_st1_min ) ) ( not ( and ?gen338 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( positive-defeated $?gen333 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen333 ) ) ) ) ) ) => ( calc ( bind $?gen336 ( delete-member$ $?gen335 ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen334 ) ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( negative-overruled $?gen336 ) )"))

([kazna_cl_8_st1_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-overruled-gen516)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen338 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen337 & : ( >= ?gen337 1 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( negative-support $?gen334 ) ( negative-overruled $?gen335 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen334 $$$ $?gen335 ) ) ) ) ( positive-defeated $?gen333 & : ( not ( member$ kazna_cl_8_st1_min_novcana $?gen333 ) ) ) ) ( test ( eq ( class ?gen331 ) novcana_kazna_8_st1_min ) ) => ( calc ( bind $?gen336 ( create$ kazna_cl_8_st1_min_novcana-overruled $?gen334 $?gen335 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( negative-overruled $?gen336 ) )"))

([kazna_cl_8_st1_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min_novcana-support-gen518)
   (depends-on declare commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_min_novcana] ) ) ) ?gen330 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ( positive-support $?gen333 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min_novcana ?gen330 $$$ $?gen333 ) ) ) ) ) ( test ( eq ( class ?gen331 ) novcana_kazna_8_st1_min ) ) => ( calc ( bind $?gen336 ( create$ kazna_cl_8_st1_min_novcana ?gen330 $?gen333 ) ) ) ?gen331 <- ( novcana_kazna_8_st1_min ( positive-support $?gen336 ) )"))

([kazna_cl_8_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-defeasibly-dot-gen520)
   (depends-on declare kazna_zatvora_max commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_max] ) ) ) ?gen322 <- ( kazna_zatvora_max ( value 1 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max $? ) ) ( test ( eq ( class ?gen322 ) kazna_zatvora_max ) ) ( not ( and ?gen329 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen328 & : ( >= ?gen328 1 ) ) ) ?gen322 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen324 & : ( not ( member$ kazna_cl_8_st1_max $?gen324 ) ) ) ) ) ) => ?gen322 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_8_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-defeasibly-gen522)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_max] ) ) ) ?gen329 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen328 & : ( >= ?gen328 1 ) ) ) ?gen322 <- ( kazna_zatvora_max ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen324 & : ( not ( member$ kazna_cl_8_st1_max $?gen324 ) ) ) ) ( test ( eq ( class ?gen322 ) kazna_zatvora_max ) ) => ?gen322 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_8_st1_max ?gen329 ) )"))

([kazna_cl_8_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-overruled-dot-gen524)
   (depends-on declare kazna_zatvora_max commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_max] ) ) ) ?gen322 <- ( kazna_zatvora_max ( value 1 ) ( negative-support $?gen325 ) ( negative-overruled $?gen326 & : ( subseq-pos ( create$ kazna_cl_8_st1_max-overruled $?gen325 $$$ $?gen326 ) ) ) ) ( test ( eq ( class ?gen322 ) kazna_zatvora_max ) ) ( not ( and ?gen329 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen328 & : ( >= ?gen328 1 ) ) ) ?gen322 <- ( kazna_zatvora_max ( positive-defeated $?gen324 & : ( not ( member$ kazna_cl_8_st1_max $?gen324 ) ) ) ) ) ) => ( calc ( bind $?gen327 ( delete-member$ $?gen326 ( create$ kazna_cl_8_st1_max-overruled $?gen325 ) ) ) ) ?gen322 <- ( kazna_zatvora_max ( negative-overruled $?gen327 ) )"))

([kazna_cl_8_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-overruled-gen526)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_max] ) ) ) ?gen329 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen328 & : ( >= ?gen328 1 ) ) ) ?gen322 <- ( kazna_zatvora_max ( value 1 ) ( negative-support $?gen325 ) ( negative-overruled $?gen326 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max-overruled $?gen325 $$$ $?gen326 ) ) ) ) ( positive-defeated $?gen324 & : ( not ( member$ kazna_cl_8_st1_max $?gen324 ) ) ) ) ( test ( eq ( class ?gen322 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen327 ( create$ kazna_cl_8_st1_max-overruled $?gen325 $?gen326 ) ) ) ?gen322 <- ( kazna_zatvora_max ( negative-overruled $?gen327 ) )"))

([kazna_cl_8_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_max-support-gen528)
   (depends-on declare commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_max] ) ) ) ?gen321 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen322 <- ( kazna_zatvora_max ( value 1 ) ( positive-support $?gen324 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_max ?gen321 $$$ $?gen324 ) ) ) ) ) ( test ( eq ( class ?gen322 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen327 ( create$ kazna_cl_8_st1_max ?gen321 $?gen324 ) ) ) ?gen322 <- ( kazna_zatvora_max ( positive-support $?gen327 ) )"))

([kazna_cl_8_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-defeasibly-dot-gen530)
   (depends-on declare kazna_zatvora_min commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_8_st1_min] ) ) ) ?gen313 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min $? ) ) ( test ( eq ( class ?gen313 ) kazna_zatvora_min ) ) ( not ( and ?gen320 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen319 & : ( >= ?gen319 1 ) ) ) ?gen313 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen315 & : ( not ( member$ kazna_cl_8_st1_min $?gen315 ) ) ) ) ) ) => ?gen313 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_8_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-defeasibly-gen532)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_8_st1_min] ) ) ) ?gen320 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen319 & : ( >= ?gen319 1 ) ) ) ?gen313 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen315 & : ( not ( member$ kazna_cl_8_st1_min $?gen315 ) ) ) ) ( test ( eq ( class ?gen313 ) kazna_zatvora_min ) ) => ?gen313 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_8_st1_min ?gen320 ) )"))

([kazna_cl_8_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-overruled-dot-gen534)
   (depends-on declare kazna_zatvora_min commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_8_st1_min] ) ) ) ?gen313 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen316 ) ( negative-overruled $?gen317 & : ( subseq-pos ( create$ kazna_cl_8_st1_min-overruled $?gen316 $$$ $?gen317 ) ) ) ) ( test ( eq ( class ?gen313 ) kazna_zatvora_min ) ) ( not ( and ?gen320 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen319 & : ( >= ?gen319 1 ) ) ) ?gen313 <- ( kazna_zatvora_min ( positive-defeated $?gen315 & : ( not ( member$ kazna_cl_8_st1_min $?gen315 ) ) ) ) ) ) => ( calc ( bind $?gen318 ( delete-member$ $?gen317 ( create$ kazna_cl_8_st1_min-overruled $?gen316 ) ) ) ) ?gen313 <- ( kazna_zatvora_min ( negative-overruled $?gen318 ) )"))

([kazna_cl_8_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-overruled-gen536)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_8_st1_min] ) ) ) ?gen320 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive ?gen319 & : ( >= ?gen319 1 ) ) ) ?gen313 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen316 ) ( negative-overruled $?gen317 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min-overruled $?gen316 $$$ $?gen317 ) ) ) ) ( positive-defeated $?gen315 & : ( not ( member$ kazna_cl_8_st1_min $?gen315 ) ) ) ) ( test ( eq ( class ?gen313 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen318 ( create$ kazna_cl_8_st1_min-overruled $?gen316 $?gen317 ) ) ) ?gen313 <- ( kazna_zatvora_min ( negative-overruled $?gen318 ) )"))

([kazna_cl_8_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_8_st1_min-support-gen538)
   (depends-on declare commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_8_st1_min] ) ) ) ?gen312 <- ( commited_8_st1 ( defendant ?Defendant ) ) ?gen313 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen315 & : ( not ( subseq-pos ( create$ kazna_cl_8_st1_min ?gen312 $$$ $?gen315 ) ) ) ) ) ( test ( eq ( class ?gen313 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen318 ( create$ kazna_cl_8_st1_min ?gen312 $?gen315 ) ) ) ?gen313 <- ( kazna_zatvora_min ( positive-support $?gen318 ) )"))

([kazna_cl_376_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-dot-gen540)
   (depends-on declare kazna_zatvora_max commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_max] ) ) ) ?gen304 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max $? ) ) ( test ( eq ( class ?gen304 ) kazna_zatvora_max ) ) ( not ( and ?gen311 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ kazna_cl_376_st3_max $?gen306 ) ) ) ) ) ) => ?gen304 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st3_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-gen542)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_max] ) ) ) ?gen311 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ kazna_cl_376_st3_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) kazna_zatvora_max ) ) => ?gen304 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max ?gen311 ) )"))

([kazna_cl_376_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-dot-gen544)
   (depends-on declare kazna_zatvora_max commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_max] ) ) ) ?gen304 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( test ( eq ( class ?gen304 ) kazna_zatvora_max ) ) ( not ( and ?gen311 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( kazna_zatvora_max ( positive-defeated $?gen306 & : ( not ( member$ kazna_cl_376_st3_max $?gen306 ) ) ) ) ) ) => ( calc ( bind $?gen309 ( delete-member$ $?gen308 ( create$ kazna_cl_376_st3_max-overruled $?gen307 ) ) ) ) ?gen304 <- ( kazna_zatvora_max ( negative-overruled $?gen309 ) )"))

([kazna_cl_376_st3_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-gen546)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_max] ) ) ) ?gen311 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( positive-defeated $?gen306 & : ( not ( member$ kazna_cl_376_st3_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen309 ( create$ kazna_cl_376_st3_max-overruled $?gen307 $?gen308 ) ) ) ?gen304 <- ( kazna_zatvora_max ( negative-overruled $?gen309 ) )"))

([kazna_cl_376_st3_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-support-gen548)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_max] ) ) ) ?gen303 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen304 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen306 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max ?gen303 $$$ $?gen306 ) ) ) ) ) ( test ( eq ( class ?gen304 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen309 ( create$ kazna_cl_376_st3_max ?gen303 $?gen306 ) ) ) ?gen304 <- ( kazna_zatvora_max ( positive-support $?gen309 ) )"))

([kazna_cl_376_st3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-dot-gen550)
   (depends-on declare kazna_zatvora_min commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_min] ) ) ) ?gen295 <- ( kazna_zatvora_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min $? ) ) ( test ( eq ( class ?gen295 ) kazna_zatvora_min ) ) ( not ( and ?gen302 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ kazna_cl_376_st3_min $?gen297 ) ) ) ) ) ) => ?gen295 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st3_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-gen552)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_min] ) ) ) ?gen302 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( kazna_zatvora_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ kazna_cl_376_st3_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) kazna_zatvora_min ) ) => ?gen295 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min ?gen302 ) )"))

([kazna_cl_376_st3_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-dot-gen554)
   (depends-on declare kazna_zatvora_min commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_min] ) ) ) ?gen295 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( test ( eq ( class ?gen295 ) kazna_zatvora_min ) ) ( not ( and ?gen302 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( kazna_zatvora_min ( positive-defeated $?gen297 & : ( not ( member$ kazna_cl_376_st3_min $?gen297 ) ) ) ) ) ) => ( calc ( bind $?gen300 ( delete-member$ $?gen299 ( create$ kazna_cl_376_st3_min-overruled $?gen298 ) ) ) ) ?gen295 <- ( kazna_zatvora_min ( negative-overruled $?gen300 ) )"))

([kazna_cl_376_st3_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-gen556)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_min] ) ) ) ?gen302 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( positive-defeated $?gen297 & : ( not ( member$ kazna_cl_376_st3_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen300 ( create$ kazna_cl_376_st3_min-overruled $?gen298 $?gen299 ) ) ) ?gen295 <- ( kazna_zatvora_min ( negative-overruled $?gen300 ) )"))

([kazna_cl_376_st3_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-support-gen558)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_min] ) ) ) ?gen294 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen295 <- ( kazna_zatvora_min ( value 6 ) ( positive-support $?gen297 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min ?gen294 $$$ $?gen297 ) ) ) ) ) ( test ( eq ( class ?gen295 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen300 ( create$ kazna_cl_376_st3_min ?gen294 $?gen297 ) ) ) ?gen295 <- ( kazna_zatvora_min ( positive-support $?gen300 ) )"))

([kazna_cl_376_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-dot-gen560)
   (depends-on declare kazna_zatvora_max commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_max] ) ) ) ?gen286 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max $? ) ) ( test ( eq ( class ?gen286 ) kazna_zatvora_max ) ) ( not ( and ?gen293 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ kazna_cl_376_st2_max $?gen288 ) ) ) ) ) ) => ?gen286 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-gen562)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_max] ) ) ) ?gen293 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ kazna_cl_376_st2_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) kazna_zatvora_max ) ) => ?gen286 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max ?gen293 ) )"))

([kazna_cl_376_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-dot-gen564)
   (depends-on declare kazna_zatvora_max commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_max] ) ) ) ?gen286 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( test ( eq ( class ?gen286 ) kazna_zatvora_max ) ) ( not ( and ?gen293 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( kazna_zatvora_max ( positive-defeated $?gen288 & : ( not ( member$ kazna_cl_376_st2_max $?gen288 ) ) ) ) ) ) => ( calc ( bind $?gen291 ( delete-member$ $?gen290 ( create$ kazna_cl_376_st2_max-overruled $?gen289 ) ) ) ) ?gen286 <- ( kazna_zatvora_max ( negative-overruled $?gen291 ) )"))

([kazna_cl_376_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-gen566)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_max] ) ) ) ?gen293 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( positive-defeated $?gen288 & : ( not ( member$ kazna_cl_376_st2_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen291 ( create$ kazna_cl_376_st2_max-overruled $?gen289 $?gen290 ) ) ) ?gen286 <- ( kazna_zatvora_max ( negative-overruled $?gen291 ) )"))

([kazna_cl_376_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-support-gen568)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_max] ) ) ) ?gen285 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen286 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen288 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max ?gen285 $$$ $?gen288 ) ) ) ) ) ( test ( eq ( class ?gen286 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen291 ( create$ kazna_cl_376_st2_max ?gen285 $?gen288 ) ) ) ?gen286 <- ( kazna_zatvora_max ( positive-support $?gen291 ) )"))

([kazna_cl_376_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-dot-gen570)
   (depends-on declare kazna_zatvora_min commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_min] ) ) ) ?gen277 <- ( kazna_zatvora_min ( value 3 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min $? ) ) ( test ( eq ( class ?gen277 ) kazna_zatvora_min ) ) ( not ( and ?gen284 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ kazna_cl_376_st2_min $?gen279 ) ) ) ) ) ) => ?gen277 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-gen572)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_min] ) ) ) ?gen284 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( kazna_zatvora_min ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ kazna_cl_376_st2_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) kazna_zatvora_min ) ) => ?gen277 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min ?gen284 ) )"))

([kazna_cl_376_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-dot-gen574)
   (depends-on declare kazna_zatvora_min commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_min] ) ) ) ?gen277 <- ( kazna_zatvora_min ( value 3 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( test ( eq ( class ?gen277 ) kazna_zatvora_min ) ) ( not ( and ?gen284 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( kazna_zatvora_min ( positive-defeated $?gen279 & : ( not ( member$ kazna_cl_376_st2_min $?gen279 ) ) ) ) ) ) => ( calc ( bind $?gen282 ( delete-member$ $?gen281 ( create$ kazna_cl_376_st2_min-overruled $?gen280 ) ) ) ) ?gen277 <- ( kazna_zatvora_min ( negative-overruled $?gen282 ) )"))

([kazna_cl_376_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-gen576)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_min] ) ) ) ?gen284 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( kazna_zatvora_min ( value 3 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( positive-defeated $?gen279 & : ( not ( member$ kazna_cl_376_st2_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen282 ( create$ kazna_cl_376_st2_min-overruled $?gen280 $?gen281 ) ) ) ?gen277 <- ( kazna_zatvora_min ( negative-overruled $?gen282 ) )"))

([kazna_cl_376_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-support-gen578)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_min] ) ) ) ?gen276 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen277 <- ( kazna_zatvora_min ( value 3 ) ( positive-support $?gen279 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min ?gen276 $$$ $?gen279 ) ) ) ) ) ( test ( eq ( class ?gen277 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen282 ( create$ kazna_cl_376_st2_min ?gen276 $?gen279 ) ) ) ?gen277 <- ( kazna_zatvora_min ( positive-support $?gen282 ) )"))

([kazna_cl_376_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-dot-gen580)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_max] ) ) ) ?gen268 <- ( kazna_zatvora_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max $? ) ) ( test ( eq ( class ?gen268 ) kazna_zatvora_max ) ) ( not ( and ?gen275 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ kazna_cl_376_st1_max $?gen270 ) ) ) ) ) ) => ?gen268 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-gen582)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_max] ) ) ) ?gen275 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( kazna_zatvora_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ kazna_cl_376_st1_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) kazna_zatvora_max ) ) => ?gen268 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max ?gen275 ) )"))

([kazna_cl_376_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-dot-gen584)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_max] ) ) ) ?gen268 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( test ( eq ( class ?gen268 ) kazna_zatvora_max ) ) ( not ( and ?gen275 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( kazna_zatvora_max ( positive-defeated $?gen270 & : ( not ( member$ kazna_cl_376_st1_max $?gen270 ) ) ) ) ) ) => ( calc ( bind $?gen273 ( delete-member$ $?gen272 ( create$ kazna_cl_376_st1_max-overruled $?gen271 ) ) ) ) ?gen268 <- ( kazna_zatvora_max ( negative-overruled $?gen273 ) )"))

([kazna_cl_376_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-gen586)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_max] ) ) ) ?gen275 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( positive-defeated $?gen270 & : ( not ( member$ kazna_cl_376_st1_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen273 ( create$ kazna_cl_376_st1_max-overruled $?gen271 $?gen272 ) ) ) ?gen268 <- ( kazna_zatvora_max ( negative-overruled $?gen273 ) )"))

([kazna_cl_376_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-support-gen588)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_max] ) ) ) ?gen267 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen268 <- ( kazna_zatvora_max ( value 36 ) ( positive-support $?gen270 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max ?gen267 $$$ $?gen270 ) ) ) ) ) ( test ( eq ( class ?gen268 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen273 ( create$ kazna_cl_376_st1_max ?gen267 $?gen270 ) ) ) ?gen268 <- ( kazna_zatvora_max ( positive-support $?gen273 ) )"))

([kazna_cl_376_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-dot-gen590)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_min] ) ) ) ?gen259 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min $? ) ) ( test ( eq ( class ?gen259 ) kazna_zatvora_min ) ) ( not ( and ?gen266 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ kazna_cl_376_st1_min $?gen261 ) ) ) ) ) ) => ?gen259 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-gen592)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_min] ) ) ) ?gen266 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ kazna_cl_376_st1_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) kazna_zatvora_min ) ) => ?gen259 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min ?gen266 ) )"))

([kazna_cl_376_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-dot-gen594)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_min] ) ) ) ?gen259 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( test ( eq ( class ?gen259 ) kazna_zatvora_min ) ) ( not ( and ?gen266 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( kazna_zatvora_min ( positive-defeated $?gen261 & : ( not ( member$ kazna_cl_376_st1_min $?gen261 ) ) ) ) ) ) => ( calc ( bind $?gen264 ( delete-member$ $?gen263 ( create$ kazna_cl_376_st1_min-overruled $?gen262 ) ) ) ) ?gen259 <- ( kazna_zatvora_min ( negative-overruled $?gen264 ) )"))

([kazna_cl_376_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-gen596)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_min] ) ) ) ?gen266 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( positive-defeated $?gen261 & : ( not ( member$ kazna_cl_376_st1_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen264 ( create$ kazna_cl_376_st1_min-overruled $?gen262 $?gen263 ) ) ) ?gen259 <- ( kazna_zatvora_min ( negative-overruled $?gen264 ) )"))

([kazna_cl_376_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-support-gen598)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_min] ) ) ) ?gen258 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen259 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen261 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min ?gen258 $$$ $?gen261 ) ) ) ) ) ( test ( eq ( class ?gen259 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen264 ( create$ kazna_cl_376_st1_min ?gen258 $?gen261 ) ) ) ?gen259 <- ( kazna_zatvora_min ( positive-support $?gen264 ) )"))

([kazna_cl_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-dot-gen600)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st3] ) ) ) ?gen250 <- ( sudska_opomena ( value 1 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st3 $? ) ) ( test ( eq ( class ?gen250 ) sudska_opomena ) ) ( not ( and ?gen257 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( sudska_opomena ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ kazna_cl_152_st3 $?gen252 ) ) ) ) ) ) => ?gen250 <- ( sudska_opomena ( positive 0 ) )"))

([kazna_cl_152_st3-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-gen602)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st3] ) ) ) ?gen257 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( sudska_opomena ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ kazna_cl_152_st3 $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) sudska_opomena ) ) => ?gen250 <- ( sudska_opomena ( positive 1 ) ( positive-derivator kazna_cl_152_st3 ?gen257 ) )"))

([kazna_cl_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-dot-gen604)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st3] ) ) ) ?gen250 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( test ( eq ( class ?gen250 ) sudska_opomena ) ) ( not ( and ?gen257 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( sudska_opomena ( positive-defeated $?gen252 & : ( not ( member$ kazna_cl_152_st3 $?gen252 ) ) ) ) ) ) => ( calc ( bind $?gen255 ( delete-member$ $?gen254 ( create$ kazna_cl_152_st3-overruled $?gen253 ) ) ) ) ?gen250 <- ( sudska_opomena ( negative-overruled $?gen255 ) )"))

([kazna_cl_152_st3-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-gen606)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st3] ) ) ) ?gen257 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( positive-defeated $?gen252 & : ( not ( member$ kazna_cl_152_st3 $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) sudska_opomena ) ) => ( calc ( bind $?gen255 ( create$ kazna_cl_152_st3-overruled $?gen253 $?gen254 ) ) ) ?gen250 <- ( sudska_opomena ( negative-overruled $?gen255 ) )"))

([kazna_cl_152_st3-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-support-gen608)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st3] ) ) ) ?gen249 <- ( commited_152_st3 ( defendant ?Defendant ) ) ?gen250 <- ( sudska_opomena ( value 1 ) ( positive-support $?gen252 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3 ?gen249 $$$ $?gen252 ) ) ) ) ) ( test ( eq ( class ?gen250 ) sudska_opomena ) ) => ( calc ( bind $?gen255 ( create$ kazna_cl_152_st3 ?gen249 $?gen252 ) ) ) ?gen250 <- ( sudska_opomena ( positive-support $?gen255 ) )"))

([kazna_cl_152_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-dot-gen610)
   (depends-on declare kazna_zatvora_max commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_max] ) ) ) ?gen241 <- ( kazna_zatvora_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max $? ) ) ( test ( eq ( class ?gen241 ) kazna_zatvora_max ) ) ( not ( and ?gen248 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ kazna_cl_152_st2_max $?gen243 ) ) ) ) ) ) => ?gen241 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_152_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-gen612)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_max] ) ) ) ?gen248 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( kazna_zatvora_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ kazna_cl_152_st2_max $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) kazna_zatvora_max ) ) => ?gen241 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max ?gen248 ) )"))

([kazna_cl_152_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-dot-gen614)
   (depends-on declare kazna_zatvora_max commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_max] ) ) ) ?gen241 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( test ( eq ( class ?gen241 ) kazna_zatvora_max ) ) ( not ( and ?gen248 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( kazna_zatvora_max ( positive-defeated $?gen243 & : ( not ( member$ kazna_cl_152_st2_max $?gen243 ) ) ) ) ) ) => ( calc ( bind $?gen246 ( delete-member$ $?gen245 ( create$ kazna_cl_152_st2_max-overruled $?gen244 ) ) ) ) ?gen241 <- ( kazna_zatvora_max ( negative-overruled $?gen246 ) )"))

([kazna_cl_152_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-gen616)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_max] ) ) ) ?gen248 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( positive-defeated $?gen243 & : ( not ( member$ kazna_cl_152_st2_max $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen246 ( create$ kazna_cl_152_st2_max-overruled $?gen244 $?gen245 ) ) ) ?gen241 <- ( kazna_zatvora_max ( negative-overruled $?gen246 ) )"))

([kazna_cl_152_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-support-gen618)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_max] ) ) ) ?gen240 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen241 <- ( kazna_zatvora_max ( value 36 ) ( positive-support $?gen243 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max ?gen240 $$$ $?gen243 ) ) ) ) ) ( test ( eq ( class ?gen241 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen246 ( create$ kazna_cl_152_st2_max ?gen240 $?gen243 ) ) ) ?gen241 <- ( kazna_zatvora_max ( positive-support $?gen246 ) )"))

([kazna_cl_152_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-dot-gen620)
   (depends-on declare kazna_zatvora_min commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_min] ) ) ) ?gen232 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min $? ) ) ( test ( eq ( class ?gen232 ) kazna_zatvora_min ) ) ( not ( and ?gen239 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ kazna_cl_152_st2_min $?gen234 ) ) ) ) ) ) => ?gen232 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_152_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-gen622)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_min] ) ) ) ?gen239 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ kazna_cl_152_st2_min $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) kazna_zatvora_min ) ) => ?gen232 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min ?gen239 ) )"))

([kazna_cl_152_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-dot-gen624)
   (depends-on declare kazna_zatvora_min commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_min] ) ) ) ?gen232 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( test ( eq ( class ?gen232 ) kazna_zatvora_min ) ) ( not ( and ?gen239 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( kazna_zatvora_min ( positive-defeated $?gen234 & : ( not ( member$ kazna_cl_152_st2_min $?gen234 ) ) ) ) ) ) => ( calc ( bind $?gen237 ( delete-member$ $?gen236 ( create$ kazna_cl_152_st2_min-overruled $?gen235 ) ) ) ) ?gen232 <- ( kazna_zatvora_min ( negative-overruled $?gen237 ) )"))

([kazna_cl_152_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-gen626)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_min] ) ) ) ?gen239 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( positive-defeated $?gen234 & : ( not ( member$ kazna_cl_152_st2_min $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen237 ( create$ kazna_cl_152_st2_min-overruled $?gen235 $?gen236 ) ) ) ?gen232 <- ( kazna_zatvora_min ( negative-overruled $?gen237 ) )"))

([kazna_cl_152_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-support-gen628)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_min] ) ) ) ?gen231 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen232 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen234 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min ?gen231 $$$ $?gen234 ) ) ) ) ) ( test ( eq ( class ?gen232 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen237 ( create$ kazna_cl_152_st2_min ?gen231 $?gen234 ) ) ) ?gen232 <- ( kazna_zatvora_min ( positive-support $?gen237 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-dot-gen630)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana $? ) ) ( test ( eq ( class ?gen223 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen230 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen225 ) ) ) ) ) ) => ?gen223 <- ( novcana_kazna_152_st1_max ( positive 0 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-gen632)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen230 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) novcana_kazna_152_st1_max ) ) => ?gen223 <- ( novcana_kazna_152_st1_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana ?gen230 ) )"))

([kazna_cl_152_st1_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-dot-gen634)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( test ( eq ( class ?gen223 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen230 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( positive-defeated $?gen225 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen225 ) ) ) ) ) ) => ( calc ( bind $?gen228 ( delete-member$ $?gen227 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen226 ) ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen228 ) )"))

([kazna_cl_152_st1_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-gen636)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen230 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( positive-defeated $?gen225 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen228 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen226 $?gen227 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen228 ) )"))

([kazna_cl_152_st1_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-support-gen638)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen222 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive-support $?gen225 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana ?gen222 $$$ $?gen225 ) ) ) ) ) ( test ( eq ( class ?gen223 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen228 ( create$ kazna_cl_152_st1_max_novcana ?gen222 $?gen225 ) ) ) ?gen223 <- ( novcana_kazna_152_st1_max ( positive-support $?gen228 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-dot-gen640)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana $? ) ) ( test ( eq ( class ?gen214 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen221 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen216 ) ) ) ) ) ) => ?gen214 <- ( novcana_kazna_152_st1_min ( positive 0 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-gen642)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen221 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) novcana_kazna_152_st1_min ) ) => ?gen214 <- ( novcana_kazna_152_st1_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana ?gen221 ) )"))

([kazna_cl_152_st1_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-dot-gen644)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( test ( eq ( class ?gen214 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen221 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( positive-defeated $?gen216 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen216 ) ) ) ) ) ) => ( calc ( bind $?gen219 ( delete-member$ $?gen218 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen217 ) ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen219 ) )"))

([kazna_cl_152_st1_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-gen646)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen221 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( positive-defeated $?gen216 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen219 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen217 $?gen218 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen219 ) )"))

([kazna_cl_152_st1_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-support-gen648)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen213 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive-support $?gen216 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana ?gen213 $$$ $?gen216 ) ) ) ) ) ( test ( eq ( class ?gen214 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen219 ( create$ kazna_cl_152_st1_min_novcana ?gen213 $?gen216 ) ) ) ?gen214 <- ( novcana_kazna_152_st1_min ( positive-support $?gen219 ) )"))

([kazna_cl_152_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-dot-gen650)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max] ) ) ) ?gen205 <- ( kazna_zatvora_max ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max $? ) ) ( test ( eq ( class ?gen205 ) kazna_zatvora_max ) ) ( not ( and ?gen212 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ kazna_cl_152_st1_max $?gen207 ) ) ) ) ) ) => ?gen205 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_152_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-gen652)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max] ) ) ) ?gen212 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( kazna_zatvora_max ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ kazna_cl_152_st1_max $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) kazna_zatvora_max ) ) => ?gen205 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max ?gen212 ) )"))

([kazna_cl_152_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-dot-gen654)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max] ) ) ) ?gen205 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( test ( eq ( class ?gen205 ) kazna_zatvora_max ) ) ( not ( and ?gen212 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( kazna_zatvora_max ( positive-defeated $?gen207 & : ( not ( member$ kazna_cl_152_st1_max $?gen207 ) ) ) ) ) ) => ( calc ( bind $?gen210 ( delete-member$ $?gen209 ( create$ kazna_cl_152_st1_max-overruled $?gen208 ) ) ) ) ?gen205 <- ( kazna_zatvora_max ( negative-overruled $?gen210 ) )"))

([kazna_cl_152_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-gen656)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max] ) ) ) ?gen212 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( positive-defeated $?gen207 & : ( not ( member$ kazna_cl_152_st1_max $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen210 ( create$ kazna_cl_152_st1_max-overruled $?gen208 $?gen209 ) ) ) ?gen205 <- ( kazna_zatvora_max ( negative-overruled $?gen210 ) )"))

([kazna_cl_152_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-support-gen658)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max] ) ) ) ?gen204 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen205 <- ( kazna_zatvora_max ( value 12 ) ( positive-support $?gen207 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max ?gen204 $$$ $?gen207 ) ) ) ) ) ( test ( eq ( class ?gen205 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen210 ( create$ kazna_cl_152_st1_max ?gen204 $?gen207 ) ) ) ?gen205 <- ( kazna_zatvora_max ( positive-support $?gen210 ) )"))

([kazna_cl_152_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-dot-gen660)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min] ) ) ) ?gen196 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min $? ) ) ( test ( eq ( class ?gen196 ) kazna_zatvora_min ) ) ( not ( and ?gen203 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen198 & : ( not ( member$ kazna_cl_152_st1_min $?gen198 ) ) ) ) ) ) => ?gen196 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_152_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-gen662)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min] ) ) ) ?gen203 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen198 & : ( not ( member$ kazna_cl_152_st1_min $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) kazna_zatvora_min ) ) => ?gen196 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min ?gen203 ) )"))

([kazna_cl_152_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-dot-gen664)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min] ) ) ) ?gen196 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen199 ) ( negative-overruled $?gen200 & : ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) kazna_zatvora_min ) ) ( not ( and ?gen203 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( kazna_zatvora_min ( positive-defeated $?gen198 & : ( not ( member$ kazna_cl_152_st1_min $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ kazna_cl_152_st1_min-overruled $?gen199 ) ) ) ) ?gen196 <- ( kazna_zatvora_min ( negative-overruled $?gen201 ) )"))

([kazna_cl_152_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-gen666)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min] ) ) ) ?gen203 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen199 ) ( negative-overruled $?gen200 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( positive-defeated $?gen198 & : ( not ( member$ kazna_cl_152_st1_min $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen201 ( create$ kazna_cl_152_st1_min-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( kazna_zatvora_min ( negative-overruled $?gen201 ) )"))

([kazna_cl_152_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-support-gen668)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min] ) ) ) ?gen195 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen196 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen198 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen201 ( create$ kazna_cl_152_st1_min ?gen195 $?gen198 ) ) ) ?gen196 <- ( kazna_zatvora_min ( positive-support $?gen201 ) )"))

([kazna_cl_151_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-dot-gen670)
   (depends-on declare kazna_zatvora_max commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_max] ) ) ) ?gen187 <- ( kazna_zatvora_max ( value 96 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max $? ) ) ( test ( eq ( class ?gen187 ) kazna_zatvora_max ) ) ( not ( and ?gen194 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ kazna_cl_151_st2_max $?gen189 ) ) ) ) ) ) => ?gen187 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_151_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-gen672)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_max] ) ) ) ?gen194 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( kazna_zatvora_max ( value 96 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen189 & : ( not ( member$ kazna_cl_151_st2_max $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) kazna_zatvora_max ) ) => ?gen187 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max ?gen194 ) )"))

([kazna_cl_151_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-dot-gen674)
   (depends-on declare kazna_zatvora_max commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_max] ) ) ) ?gen187 <- ( kazna_zatvora_max ( value 96 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) kazna_zatvora_max ) ) ( not ( and ?gen194 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( kazna_zatvora_max ( positive-defeated $?gen189 & : ( not ( member$ kazna_cl_151_st2_max $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ kazna_cl_151_st2_max-overruled $?gen190 ) ) ) ) ?gen187 <- ( kazna_zatvora_max ( negative-overruled $?gen192 ) )"))

([kazna_cl_151_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-gen676)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_max] ) ) ) ?gen194 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( kazna_zatvora_max ( value 96 ) ( negative-support $?gen190 ) ( negative-overruled $?gen191 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( positive-defeated $?gen189 & : ( not ( member$ kazna_cl_151_st2_max $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen192 ( create$ kazna_cl_151_st2_max-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( kazna_zatvora_max ( negative-overruled $?gen192 ) )"))

([kazna_cl_151_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-support-gen678)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_max] ) ) ) ?gen186 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen187 <- ( kazna_zatvora_max ( value 96 ) ( positive-support $?gen189 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen192 ( create$ kazna_cl_151_st2_max ?gen186 $?gen189 ) ) ) ?gen187 <- ( kazna_zatvora_max ( positive-support $?gen192 ) )"))

([kazna_cl_151_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-dot-gen680)
   (depends-on declare kazna_zatvora_min commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_min] ) ) ) ?gen178 <- ( kazna_zatvora_min ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min $? ) ) ( test ( eq ( class ?gen178 ) kazna_zatvora_min ) ) ( not ( and ?gen185 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ kazna_cl_151_st2_min $?gen180 ) ) ) ) ) ) => ?gen178 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_151_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-gen682)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_min] ) ) ) ?gen185 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( kazna_zatvora_min ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen180 & : ( not ( member$ kazna_cl_151_st2_min $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) kazna_zatvora_min ) ) => ?gen178 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min ?gen185 ) )"))

([kazna_cl_151_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-dot-gen684)
   (depends-on declare kazna_zatvora_min commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_min] ) ) ) ?gen178 <- ( kazna_zatvora_min ( value 12 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) kazna_zatvora_min ) ) ( not ( and ?gen185 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( kazna_zatvora_min ( positive-defeated $?gen180 & : ( not ( member$ kazna_cl_151_st2_min $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ kazna_cl_151_st2_min-overruled $?gen181 ) ) ) ) ?gen178 <- ( kazna_zatvora_min ( negative-overruled $?gen183 ) )"))

([kazna_cl_151_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-gen686)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_min] ) ) ) ?gen185 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( kazna_zatvora_min ( value 12 ) ( negative-support $?gen181 ) ( negative-overruled $?gen182 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( positive-defeated $?gen180 & : ( not ( member$ kazna_cl_151_st2_min $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen183 ( create$ kazna_cl_151_st2_min-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( kazna_zatvora_min ( negative-overruled $?gen183 ) )"))

([kazna_cl_151_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-support-gen688)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_min] ) ) ) ?gen177 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen178 <- ( kazna_zatvora_min ( value 12 ) ( positive-support $?gen180 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen183 ( create$ kazna_cl_151_st2_min ?gen177 $?gen180 ) ) ) ?gen178 <- ( kazna_zatvora_min ( positive-support $?gen183 ) )"))

([kazna_cl_151_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-dot-gen690)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_max] ) ) ) ?gen169 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max $? ) ) ( test ( eq ( class ?gen169 ) kazna_zatvora_max ) ) ( not ( and ?gen176 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ kazna_cl_151_st1_max $?gen171 ) ) ) ) ) ) => ?gen169 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_151_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-gen692)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_max] ) ) ) ?gen176 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen171 & : ( not ( member$ kazna_cl_151_st1_max $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) kazna_zatvora_max ) ) => ?gen169 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max ?gen176 ) )"))

([kazna_cl_151_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-dot-gen694)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_max] ) ) ) ?gen169 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) kazna_zatvora_max ) ) ( not ( and ?gen176 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( kazna_zatvora_max ( positive-defeated $?gen171 & : ( not ( member$ kazna_cl_151_st1_max $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ kazna_cl_151_st1_max-overruled $?gen172 ) ) ) ) ?gen169 <- ( kazna_zatvora_max ( negative-overruled $?gen174 ) )"))

([kazna_cl_151_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-gen696)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_max] ) ) ) ?gen176 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen172 ) ( negative-overruled $?gen173 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( positive-defeated $?gen171 & : ( not ( member$ kazna_cl_151_st1_max $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen174 ( create$ kazna_cl_151_st1_max-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( kazna_zatvora_max ( negative-overruled $?gen174 ) )"))

([kazna_cl_151_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-support-gen698)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_max] ) ) ) ?gen168 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen169 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen171 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen174 ( create$ kazna_cl_151_st1_max ?gen168 $?gen171 ) ) ) ?gen169 <- ( kazna_zatvora_max ( positive-support $?gen174 ) )"))

([kazna_cl_151_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-dot-gen700)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_min] ) ) ) ?gen160 <- ( kazna_zatvora_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min $? ) ) ( test ( eq ( class ?gen160 ) kazna_zatvora_min ) ) ( not ( and ?gen167 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ kazna_cl_151_st1_min $?gen162 ) ) ) ) ) ) => ?gen160 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_151_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-gen702)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_min] ) ) ) ?gen167 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( kazna_zatvora_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ kazna_cl_151_st1_min $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) kazna_zatvora_min ) ) => ?gen160 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min ?gen167 ) )"))

([kazna_cl_151_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-dot-gen704)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_min] ) ) ) ?gen160 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) kazna_zatvora_min ) ) ( not ( and ?gen167 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( kazna_zatvora_min ( positive-defeated $?gen162 & : ( not ( member$ kazna_cl_151_st1_min $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ kazna_cl_151_st1_min-overruled $?gen163 ) ) ) ) ?gen160 <- ( kazna_zatvora_min ( negative-overruled $?gen165 ) )"))

([kazna_cl_151_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-gen706)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_min] ) ) ) ?gen167 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ kazna_cl_151_st1_min $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen165 ( create$ kazna_cl_151_st1_min-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( kazna_zatvora_min ( negative-overruled $?gen165 ) )"))

([kazna_cl_151_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-support-gen708)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_min] ) ) ) ?gen159 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen160 <- ( kazna_zatvora_min ( value 6 ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen165 ( create$ kazna_cl_151_st1_min ?gen159 $?gen162 ) ) ) ?gen160 <- ( kazna_zatvora_min ( positive-support $?gen165 ) )"))

([rule_10_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_10_st1-defeasibly-dot-gen710)
   (depends-on declare commited_10_st1 lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_10_st1] ) ) ) ?gen147 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_10_st1 $? ) ) ( test ( eq ( class ?gen147 ) commited_10_st1 ) ) ( not ( and ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen158 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen147 <- ( commited_10_st1 ( negative ~ 2 ) ( positive-overruled $?gen149 & : ( not ( member$ rule_10_st1 $?gen149 ) ) ) ) ) ) => ?gen147 <- ( commited_10_st1 ( positive 0 ) )"))

([rule_10_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_10_st1-defeasibly-gen712)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_10_st1] ) ) ) ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen158 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen147 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen149 & : ( not ( member$ rule_10_st1 $?gen149 ) ) ) ) ( test ( eq ( class ?gen147 ) commited_10_st1 ) ) => ?gen147 <- ( commited_10_st1 ( positive 1 ) ( positive-derivator rule_10_st1 ?gen154 ?gen156 ?gen158 ) )"))

([rule_10_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_10_st1-overruled-dot-gen714)
   (depends-on declare commited_10_st1 lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_10_st1] ) ) ) ?gen147 <- ( commited_10_st1 ( defendant ?Defendant ) ( negative-support $?gen150 ) ( negative-overruled $?gen151 & : ( subseq-pos ( create$ rule_10_st1-overruled $?gen150 $$$ $?gen151 ) ) ) ) ( test ( eq ( class ?gen147 ) commited_10_st1 ) ) ( not ( and ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen158 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen147 <- ( commited_10_st1 ( positive-defeated $?gen149 & : ( not ( member$ rule_10_st1 $?gen149 ) ) ) ) ) ) => ( calc ( bind $?gen152 ( delete-member$ $?gen151 ( create$ rule_10_st1-overruled $?gen150 ) ) ) ) ?gen147 <- ( commited_10_st1 ( negative-overruled $?gen152 ) )"))

([rule_10_st1-overruled] of derived-attribute-rule
   (pos-name rule_10_st1-overruled-gen716)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_10_st1] ) ) ) ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen153 & : ( >= ?gen153 1 ) ) ) ?gen156 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen158 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen147 <- ( commited_10_st1 ( defendant ?Defendant ) ( negative-support $?gen150 ) ( negative-overruled $?gen151 & : ( not ( subseq-pos ( create$ rule_10_st1-overruled $?gen150 $$$ $?gen151 ) ) ) ) ( positive-defeated $?gen149 & : ( not ( member$ rule_10_st1 $?gen149 ) ) ) ) ( test ( eq ( class ?gen147 ) commited_10_st1 ) ) => ( calc ( bind $?gen152 ( create$ rule_10_st1-overruled $?gen150 $?gen151 ) ) ) ?gen147 <- ( commited_10_st1 ( negative-overruled $?gen152 ) )"))

([rule_10_st1-support] of derived-attribute-rule
   (pos-name rule_10_st1-support-gen718)
   (depends-on declare lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_10_st1] ) ) ) ?gen144 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen146 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ?gen147 <- ( commited_10_st1 ( defendant ?Defendant ) ( positive-support $?gen149 & : ( not ( subseq-pos ( create$ rule_10_st1 ?gen144 ?gen145 ?gen146 $$$ $?gen149 ) ) ) ) ) ( test ( eq ( class ?gen147 ) commited_10_st1 ) ) => ( calc ( bind $?gen152 ( create$ rule_10_st1 ?gen144 ?gen145 ?gen146 $?gen149 ) ) ) ?gen147 <- ( commited_10_st1 ( positive-support $?gen152 ) )"))

([rule_8_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_8_st2-defeasibly-dot-gen720)
   (depends-on declare commited_8_st2 lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_8_st2] ) ) ) ?gen132 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_8_st2 $? ) ) ( test ( eq ( class ?gen132 ) commited_8_st2 ) ) ( not ( and ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen143 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen132 <- ( commited_8_st2 ( negative ~ 2 ) ( positive-overruled $?gen134 & : ( not ( member$ rule_8_st2 $?gen134 ) ) ) ) ) ) => ?gen132 <- ( commited_8_st2 ( positive 0 ) )"))

([rule_8_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_8_st2-defeasibly-gen722)
   (depends-on declare lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_8_st2] ) ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen143 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen132 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen134 & : ( not ( member$ rule_8_st2 $?gen134 ) ) ) ) ( test ( eq ( class ?gen132 ) commited_8_st2 ) ) => ?gen132 <- ( commited_8_st2 ( positive 1 ) ( positive-derivator rule_8_st2 ?gen139 ?gen141 ?gen143 ) )"))

([rule_8_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_8_st2-overruled-dot-gen724)
   (depends-on declare commited_8_st2 lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_8_st2] ) ) ) ?gen132 <- ( commited_8_st2 ( defendant ?Defendant ) ( negative-support $?gen135 ) ( negative-overruled $?gen136 & : ( subseq-pos ( create$ rule_8_st2-overruled $?gen135 $$$ $?gen136 ) ) ) ) ( test ( eq ( class ?gen132 ) commited_8_st2 ) ) ( not ( and ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen143 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen132 <- ( commited_8_st2 ( positive-defeated $?gen134 & : ( not ( member$ rule_8_st2 $?gen134 ) ) ) ) ) ) => ( calc ( bind $?gen137 ( delete-member$ $?gen136 ( create$ rule_8_st2-overruled $?gen135 ) ) ) ) ?gen132 <- ( commited_8_st2 ( negative-overruled $?gen137 ) )"))

([rule_8_st2-overruled] of derived-attribute-rule
   (pos-name rule_8_st2-overruled-gen726)
   (depends-on declare lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_8_st2] ) ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen143 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen132 <- ( commited_8_st2 ( defendant ?Defendant ) ( negative-support $?gen135 ) ( negative-overruled $?gen136 & : ( not ( subseq-pos ( create$ rule_8_st2-overruled $?gen135 $$$ $?gen136 ) ) ) ) ( positive-defeated $?gen134 & : ( not ( member$ rule_8_st2 $?gen134 ) ) ) ) ( test ( eq ( class ?gen132 ) commited_8_st2 ) ) => ( calc ( bind $?gen137 ( create$ rule_8_st2-overruled $?gen135 $?gen136 ) ) ) ?gen132 <- ( commited_8_st2 ( negative-overruled $?gen137 ) )"))

([rule_8_st2-support] of derived-attribute-rule
   (pos-name rule_8_st2-support-gen728)
   (depends-on declare lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_8_st2] ) ) ) ?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen131 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ?gen132 <- ( commited_8_st2 ( defendant ?Defendant ) ( positive-support $?gen134 & : ( not ( subseq-pos ( create$ rule_8_st2 ?gen129 ?gen130 ?gen131 $$$ $?gen134 ) ) ) ) ) ( test ( eq ( class ?gen132 ) commited_8_st2 ) ) => ( calc ( bind $?gen137 ( create$ rule_8_st2 ?gen129 ?gen130 ?gen131 $?gen134 ) ) ) ?gen132 <- ( commited_8_st2 ( positive-support $?gen137 ) )"))

([rule_8_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_8_st1-defeasibly-dot-gen730)
   (depends-on declare commited_8_st1 lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_8_st1] ) ) ) ?gen117 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_8_st1 $? ) ) ( test ( eq ( class ?gen117 ) commited_8_st1 ) ) ( not ( and ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen123 & : ( >= ?gen123 1 ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen117 <- ( commited_8_st1 ( negative ~ 2 ) ( positive-overruled $?gen119 & : ( not ( member$ rule_8_st1 $?gen119 ) ) ) ) ) ) => ?gen117 <- ( commited_8_st1 ( positive 0 ) )"))

([rule_8_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_8_st1-defeasibly-gen732)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_8_st1] ) ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen123 & : ( >= ?gen123 1 ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen117 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen119 & : ( not ( member$ rule_8_st1 $?gen119 ) ) ) ) ( test ( eq ( class ?gen117 ) commited_8_st1 ) ) => ?gen117 <- ( commited_8_st1 ( positive 1 ) ( positive-derivator rule_8_st1 ?gen124 ?gen126 ?gen128 ) )"))

([rule_8_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_8_st1-overruled-dot-gen734)
   (depends-on declare commited_8_st1 lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_8_st1] ) ) ) ?gen117 <- ( commited_8_st1 ( defendant ?Defendant ) ( negative-support $?gen120 ) ( negative-overruled $?gen121 & : ( subseq-pos ( create$ rule_8_st1-overruled $?gen120 $$$ $?gen121 ) ) ) ) ( test ( eq ( class ?gen117 ) commited_8_st1 ) ) ( not ( and ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen123 & : ( >= ?gen123 1 ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen117 <- ( commited_8_st1 ( positive-defeated $?gen119 & : ( not ( member$ rule_8_st1 $?gen119 ) ) ) ) ) ) => ( calc ( bind $?gen122 ( delete-member$ $?gen121 ( create$ rule_8_st1-overruled $?gen120 ) ) ) ) ?gen117 <- ( commited_8_st1 ( negative-overruled $?gen122 ) )"))

([rule_8_st1-overruled] of derived-attribute-rule
   (pos-name rule_8_st1-overruled-gen736)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_8_st1] ) ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen123 & : ( >= ?gen123 1 ) ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ( positive ?gen125 & : ( >= ?gen125 1 ) ) ) ?gen128 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen117 <- ( commited_8_st1 ( defendant ?Defendant ) ( negative-support $?gen120 ) ( negative-overruled $?gen121 & : ( not ( subseq-pos ( create$ rule_8_st1-overruled $?gen120 $$$ $?gen121 ) ) ) ) ( positive-defeated $?gen119 & : ( not ( member$ rule_8_st1 $?gen119 ) ) ) ) ( test ( eq ( class ?gen117 ) commited_8_st1 ) ) => ( calc ( bind $?gen122 ( create$ rule_8_st1-overruled $?gen120 $?gen121 ) ) ) ?gen117 <- ( commited_8_st1 ( negative-overruled $?gen122 ) )"))

([rule_8_st1-support] of derived-attribute-rule
   (pos-name rule_8_st1-support-gen738)
   (depends-on declare lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_8_st1] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen116 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ?gen117 <- ( commited_8_st1 ( defendant ?Defendant ) ( positive-support $?gen119 & : ( not ( subseq-pos ( create$ rule_8_st1 ?gen114 ?gen115 ?gen116 $$$ $?gen119 ) ) ) ) ) ( test ( eq ( class ?gen117 ) commited_8_st1 ) ) => ( calc ( bind $?gen122 ( create$ rule_8_st1 ?gen114 ?gen115 ?gen116 $?gen119 ) ) ) ?gen117 <- ( commited_8_st1 ( positive-support $?gen122 ) )"))

([rule_376_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-dot-gen740)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st3] ) ) ) ?gen106 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st3 $? ) ) ( test ( eq ( class ?gen106 ) commited_376_st3 ) ) ( not ( and ?gen113 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( commited_376_st3 ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ rule_376_st3 $?gen108 ) ) ) ) ) ) => ?gen106 <- ( commited_376_st3 ( positive 0 ) )"))

([rule_376_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-gen742)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st3] ) ) ) ?gen113 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen108 & : ( not ( member$ rule_376_st3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) commited_376_st3 ) ) => ?gen106 <- ( commited_376_st3 ( positive 1 ) ( positive-derivator rule_376_st3 ?gen113 ) )"))

([rule_376_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-dot-gen744)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st3] ) ) ) ?gen106 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( subseq-pos ( create$ rule_376_st3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) commited_376_st3 ) ) ( not ( and ?gen113 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( commited_376_st3 ( positive-defeated $?gen108 & : ( not ( member$ rule_376_st3 $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ rule_376_st3-overruled $?gen109 ) ) ) ) ?gen106 <- ( commited_376_st3 ( negative-overruled $?gen111 ) )"))

([rule_376_st3-overruled] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-gen746)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st3] ) ) ) ?gen113 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen109 ) ( negative-overruled $?gen110 & : ( not ( subseq-pos ( create$ rule_376_st3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( positive-defeated $?gen108 & : ( not ( member$ rule_376_st3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) commited_376_st3 ) ) => ( calc ( bind $?gen111 ( create$ rule_376_st3-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( commited_376_st3 ( negative-overruled $?gen111 ) )"))

([rule_376_st3-support] of derived-attribute-rule
   (pos-name rule_376_st3-support-gen748)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st3] ) ) ) ?gen105 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ?gen106 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive-support $?gen108 & : ( not ( subseq-pos ( create$ rule_376_st3 ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) commited_376_st3 ) ) => ( calc ( bind $?gen111 ( create$ rule_376_st3 ?gen105 $?gen108 ) ) ) ?gen106 <- ( commited_376_st3 ( positive-support $?gen111 ) )"))

([rule_376_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st2-defeasibly-dot-gen750)
   (depends-on declare commited_376_st2 commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st2] ) ) ) ?gen93 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st2 $? ) ) ( test ( eq ( class ?gen93 ) commited_376_st2 ) ) ( not ( and ?gen100 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen101 & : ( >= ?gen101 1 ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen93 <- ( commited_376_st2 ( negative ~ 2 ) ( positive-overruled $?gen95 & : ( not ( member$ rule_376_st2 $?gen95 ) ) ) ) ) ) => ?gen93 <- ( commited_376_st2 ( positive 0 ) )"))

([rule_376_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st2-defeasibly-gen752)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st2] ) ) ) ?gen100 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen101 & : ( >= ?gen101 1 ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen93 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen95 & : ( not ( member$ rule_376_st2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) commited_376_st2 ) ) => ?gen93 <- ( commited_376_st2 ( positive 1 ) ( positive-derivator rule_376_st2 ?gen100 ?gen102 ?gen104 ) )"))

([rule_376_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st2-overruled-dot-gen754)
   (depends-on declare commited_376_st2 commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st2] ) ) ) ?gen93 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen96 ) ( negative-overruled $?gen97 & : ( subseq-pos ( create$ rule_376_st2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( test ( eq ( class ?gen93 ) commited_376_st2 ) ) ( not ( and ?gen100 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen101 & : ( >= ?gen101 1 ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen93 <- ( commited_376_st2 ( positive-defeated $?gen95 & : ( not ( member$ rule_376_st2 $?gen95 ) ) ) ) ) ) => ( calc ( bind $?gen98 ( delete-member$ $?gen97 ( create$ rule_376_st2-overruled $?gen96 ) ) ) ) ?gen93 <- ( commited_376_st2 ( negative-overruled $?gen98 ) )"))

([rule_376_st2-overruled] of derived-attribute-rule
   (pos-name rule_376_st2-overruled-gen756)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st2] ) ) ) ?gen100 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen101 & : ( >= ?gen101 1 ) ) ) ?gen104 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen93 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen96 ) ( negative-overruled $?gen97 & : ( not ( subseq-pos ( create$ rule_376_st2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( positive-defeated $?gen95 & : ( not ( member$ rule_376_st2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) commited_376_st2 ) ) => ( calc ( bind $?gen98 ( create$ rule_376_st2-overruled $?gen96 $?gen97 ) ) ) ?gen93 <- ( commited_376_st2 ( negative-overruled $?gen98 ) )"))

([rule_376_st2-support] of derived-attribute-rule
   (pos-name rule_376_st2-support-gen758)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st2] ) ) ) ?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen91 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ?gen93 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive-support $?gen95 & : ( not ( subseq-pos ( create$ rule_376_st2 ?gen90 ?gen91 ?gen92 $$$ $?gen95 ) ) ) ) ) ( test ( eq ( class ?gen93 ) commited_376_st2 ) ) => ( calc ( bind $?gen98 ( create$ rule_376_st2 ?gen90 ?gen91 ?gen92 $?gen95 ) ) ) ?gen93 <- ( commited_376_st2 ( positive-support $?gen98 ) )"))

([rule_376_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-dot-gen760)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st1] ) ) ) ?gen80 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st1 $? ) ) ( test ( eq ( class ?gen80 ) commited_376_st1 ) ) ( not ( and ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_376_st1 ( negative ~ 2 ) ( positive-overruled $?gen82 & : ( not ( member$ rule_376_st1 $?gen82 ) ) ) ) ) ) => ?gen80 <- ( commited_376_st1 ( positive 0 ) )"))

([rule_376_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-gen762)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st1] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen82 & : ( not ( member$ rule_376_st1 $?gen82 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_376_st1 ) ) => ?gen80 <- ( commited_376_st1 ( positive 1 ) ( positive-derivator rule_376_st1 ?gen87 ?gen89 ) )"))

([rule_376_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-dot-gen764)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st1] ) ) ) ?gen80 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen83 ) ( negative-overruled $?gen84 & : ( subseq-pos ( create$ rule_376_st1-overruled $?gen83 $$$ $?gen84 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_376_st1 ) ) ( not ( and ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_376_st1 ( positive-defeated $?gen82 & : ( not ( member$ rule_376_st1 $?gen82 ) ) ) ) ) ) => ( calc ( bind $?gen85 ( delete-member$ $?gen84 ( create$ rule_376_st1-overruled $?gen83 ) ) ) ) ?gen80 <- ( commited_376_st1 ( negative-overruled $?gen85 ) )"))

([rule_376_st1-overruled] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-gen766)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st1] ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ?gen89 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen88 & : ( >= ?gen88 1 ) ) ) ?gen80 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen83 ) ( negative-overruled $?gen84 & : ( not ( subseq-pos ( create$ rule_376_st1-overruled $?gen83 $$$ $?gen84 ) ) ) ) ( positive-defeated $?gen82 & : ( not ( member$ rule_376_st1 $?gen82 ) ) ) ) ( test ( eq ( class ?gen80 ) commited_376_st1 ) ) => ( calc ( bind $?gen85 ( create$ rule_376_st1-overruled $?gen83 $?gen84 ) ) ) ?gen80 <- ( commited_376_st1 ( negative-overruled $?gen85 ) )"))

([rule_376_st1-support] of derived-attribute-rule
   (pos-name rule_376_st1-support-gen768)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st1] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen79 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen80 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive-support $?gen82 & : ( not ( subseq-pos ( create$ rule_376_st1 ?gen78 ?gen79 $$$ $?gen82 ) ) ) ) ) ( test ( eq ( class ?gen80 ) commited_376_st1 ) ) => ( calc ( bind $?gen85 ( create$ rule_376_st1 ?gen78 ?gen79 $?gen82 ) ) ) ?gen80 <- ( commited_376_st1 ( positive-support $?gen85 ) )"))

([rule_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-dot-gen770)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st3] ) ) ) ?gen68 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st3 $? ) ) ( test ( eq ( class ?gen68 ) commited_152_st3 ) ) ( not ( and ?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen68 <- ( commited_152_st3 ( negative ~ 2 ) ( positive-overruled $?gen70 & : ( not ( member$ rule_152_st3 $?gen70 ) ) ) ) ) ) => ?gen68 <- ( commited_152_st3 ( positive 0 ) )"))

([rule_152_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-gen772)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st3] ) ) ) ?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen68 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen70 & : ( not ( member$ rule_152_st3 $?gen70 ) ) ) ) ( test ( eq ( class ?gen68 ) commited_152_st3 ) ) => ?gen68 <- ( commited_152_st3 ( positive 1 ) ( positive-derivator rule_152_st3 ?gen75 ?gen77 ) )"))

([rule_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-dot-gen774)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st3] ) ) ) ?gen68 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen71 ) ( negative-overruled $?gen72 & : ( subseq-pos ( create$ rule_152_st3-overruled $?gen71 $$$ $?gen72 ) ) ) ) ( test ( eq ( class ?gen68 ) commited_152_st3 ) ) ( not ( and ?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen68 <- ( commited_152_st3 ( positive-defeated $?gen70 & : ( not ( member$ rule_152_st3 $?gen70 ) ) ) ) ) ) => ( calc ( bind $?gen73 ( delete-member$ $?gen72 ( create$ rule_152_st3-overruled $?gen71 ) ) ) ) ?gen68 <- ( commited_152_st3 ( negative-overruled $?gen73 ) )"))

([rule_152_st3-overruled] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-gen776)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st3] ) ) ) ?gen75 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen74 & : ( >= ?gen74 1 ) ) ) ?gen77 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen68 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen71 ) ( negative-overruled $?gen72 & : ( not ( subseq-pos ( create$ rule_152_st3-overruled $?gen71 $$$ $?gen72 ) ) ) ) ( positive-defeated $?gen70 & : ( not ( member$ rule_152_st3 $?gen70 ) ) ) ) ( test ( eq ( class ?gen68 ) commited_152_st3 ) ) => ( calc ( bind $?gen73 ( create$ rule_152_st3-overruled $?gen71 $?gen72 ) ) ) ?gen68 <- ( commited_152_st3 ( negative-overruled $?gen73 ) )"))

([rule_152_st3-support] of derived-attribute-rule
   (pos-name rule_152_st3-support-gen778)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st3] ) ) ) ?gen66 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen68 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive-support $?gen70 & : ( not ( subseq-pos ( create$ rule_152_st3 ?gen66 ?gen67 $$$ $?gen70 ) ) ) ) ) ( test ( eq ( class ?gen68 ) commited_152_st3 ) ) => ( calc ( bind $?gen73 ( create$ rule_152_st3 ?gen66 ?gen67 $?gen70 ) ) ) ?gen68 <- ( commited_152_st3 ( positive-support $?gen73 ) )"))

([rule_152_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-dot-gen780)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st2] ) ) ) ?gen56 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st2 $? ) ) ( test ( eq ( class ?gen56 ) commited_152_st2 ) ) ( not ( and ?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( commited_152_st2 ( negative ~ 2 ) ( positive-overruled $?gen58 & : ( not ( member$ rule_152_st2 $?gen58 ) ) ) ) ) ) => ?gen56 <- ( commited_152_st2 ( positive 0 ) )"))

([rule_152_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-gen782)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st2] ) ) ) ?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen58 & : ( not ( member$ rule_152_st2 $?gen58 ) ) ) ) ( test ( eq ( class ?gen56 ) commited_152_st2 ) ) => ?gen56 <- ( commited_152_st2 ( positive 1 ) ( positive-derivator rule_152_st2 ?gen63 ?gen65 ) )"))

([rule_152_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-dot-gen784)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st2] ) ) ) ?gen56 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen59 ) ( negative-overruled $?gen60 & : ( subseq-pos ( create$ rule_152_st2-overruled $?gen59 $$$ $?gen60 ) ) ) ) ( test ( eq ( class ?gen56 ) commited_152_st2 ) ) ( not ( and ?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( commited_152_st2 ( positive-defeated $?gen58 & : ( not ( member$ rule_152_st2 $?gen58 ) ) ) ) ) ) => ( calc ( bind $?gen61 ( delete-member$ $?gen60 ( create$ rule_152_st2-overruled $?gen59 ) ) ) ) ?gen56 <- ( commited_152_st2 ( negative-overruled $?gen61 ) )"))

([rule_152_st2-overruled] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-gen786)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st2] ) ) ) ?gen63 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen62 & : ( >= ?gen62 1 ) ) ) ?gen65 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen64 & : ( >= ?gen64 1 ) ) ) ?gen56 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen59 ) ( negative-overruled $?gen60 & : ( not ( subseq-pos ( create$ rule_152_st2-overruled $?gen59 $$$ $?gen60 ) ) ) ) ( positive-defeated $?gen58 & : ( not ( member$ rule_152_st2 $?gen58 ) ) ) ) ( test ( eq ( class ?gen56 ) commited_152_st2 ) ) => ( calc ( bind $?gen61 ( create$ rule_152_st2-overruled $?gen59 $?gen60 ) ) ) ?gen56 <- ( commited_152_st2 ( negative-overruled $?gen61 ) )"))

([rule_152_st2-support] of derived-attribute-rule
   (pos-name rule_152_st2-support-gen788)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st2] ) ) ) ?gen54 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ?gen56 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive-support $?gen58 & : ( not ( subseq-pos ( create$ rule_152_st2 ?gen54 ?gen55 $$$ $?gen58 ) ) ) ) ) ( test ( eq ( class ?gen56 ) commited_152_st2 ) ) => ( calc ( bind $?gen61 ( create$ rule_152_st2 ?gen54 ?gen55 $?gen58 ) ) ) ?gen56 <- ( commited_152_st2 ( positive-support $?gen61 ) )"))

([rule_152_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-dot-gen790)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st1] ) ) ) ?gen44 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st1 $? ) ) ( test ( eq ( class ?gen44 ) commited_152_st1 ) ) ( not ( and ?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( commited_152_st1 ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule_152_st1 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( commited_152_st1 ( positive 0 ) )"))

([rule_152_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-gen792)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st1] ) ) ) ?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule_152_st1 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) commited_152_st1 ) ) => ?gen44 <- ( commited_152_st1 ( positive 1 ) ( positive-derivator rule_152_st1 ?gen51 ?gen53 ) )"))

([rule_152_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-dot-gen794)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st1] ) ) ) ?gen44 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule_152_st1-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) commited_152_st1 ) ) ( not ( and ?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( commited_152_st1 ( positive-defeated $?gen46 & : ( not ( member$ rule_152_st1 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule_152_st1-overruled $?gen47 ) ) ) ) ?gen44 <- ( commited_152_st1 ( negative-overruled $?gen49 ) )"))

([rule_152_st1-overruled] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-gen796)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st1] ) ) ) ?gen51 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule_152_st1-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule_152_st1 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) commited_152_st1 ) ) => ( calc ( bind $?gen49 ( create$ rule_152_st1-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( commited_152_st1 ( negative-overruled $?gen49 ) )"))

([rule_152_st1-support] of derived-attribute-rule
   (pos-name rule_152_st1-support-gen798)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st1] ) ) ) ?gen42 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen44 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule_152_st1 ?gen42 ?gen43 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) commited_152_st1 ) ) => ( calc ( bind $?gen49 ( create$ rule_152_st1 ?gen42 ?gen43 $?gen46 ) ) ) ?gen44 <- ( commited_152_st1 ( positive-support $?gen49 ) )"))

([rule_151_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st2-defeasibly-dot-gen800)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st2] ) ) ) ?gen30 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st2 $? ) ) ( test ( eq ( class ?gen30 ) commited_151_st2 ) ) ( not ( and ?gen37 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( commited_151_st2 ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule_151_st2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( commited_151_st2 ( positive 0 ) )"))

([rule_151_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st2-defeasibly-gen802)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st2] ) ) ) ?gen37 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule_151_st2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) commited_151_st2 ) ) => ?gen30 <- ( commited_151_st2 ( positive 1 ) ( positive-derivator rule_151_st2 ?gen37 ?gen39 ?gen41 ) )"))

([rule_151_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st2-overruled-dot-gen804)
   (depends-on declare commited_151_st2 commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st2] ) ) ) ?gen30 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule_151_st2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) commited_151_st2 ) ) ( not ( and ?gen37 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( commited_151_st2 ( positive-defeated $?gen32 & : ( not ( member$ rule_151_st2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule_151_st2-overruled $?gen33 ) ) ) ) ?gen30 <- ( commited_151_st2 ( negative-overruled $?gen35 ) )"))

([rule_151_st2-overruled] of derived-attribute-rule
   (pos-name rule_151_st2-overruled-gen806)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st2] ) ) ) ?gen37 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule_151_st2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule_151_st2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) commited_151_st2 ) ) => ( calc ( bind $?gen35 ( create$ rule_151_st2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( commited_151_st2 ( negative-overruled $?gen35 ) )"))

([rule_151_st2-support] of derived-attribute-rule
   (pos-name rule_151_st2-support-gen808)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st2] ) ) ) ?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ?gen30 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule_151_st2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) commited_151_st2 ) ) => ( calc ( bind $?gen35 ( create$ rule_151_st2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( commited_151_st2 ( positive-support $?gen35 ) )"))

([rule_151_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-dot-gen810)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st1 $? ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( commited_151_st1 ( positive 0 ) )"))

([rule_151_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-gen812)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ?gen17 <- ( commited_151_st1 ( positive 1 ) ( positive-derivator rule_151_st1 ?gen24 ?gen26 ) )"))

([rule_151_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-dot-gen814)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule_151_st1-overruled $?gen20 ) ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-overruled] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-gen816)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-support] of derived-attribute-rule
   (pos-name rule_151_st1-support-gen818)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st1] ) ) ) ?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule_151_st1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-support $?gen22 ) )"))

([kazna_cl_10_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_10_st1_max-deductive-gen439)
   (depends-on commited_10_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen393 <- ( commited_10_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 2 ) ) ) => ( kazna_zatvora_max ( value 2 ) )")
   (production-rule "( defrule kazna_cl_10_st1_max-deductive-gen439 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen393 ) ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 2 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_10_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_10_st1_min-deductive-gen438)
   (depends-on commited_10_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen384 <- ( commited_10_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_10_st1_min-deductive-gen438 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen384 ) ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_8_st2_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st2_max_novcana-deductive-gen437)
   (depends-on commited_8_st2 novcana_kazna_8_st2_max)
   (implies novcana_kazna_8_st2_max)
   (deductive-rule "?gen375 <- ( commited_8_st2 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ) ) => ( novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) )")
   (production-rule "( defrule kazna_cl_8_st2_max_novcana-deductive-gen437 ( declare ( salience ( calc-salience novcana_kazna_8_st2_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen375 ) ( is-a commited_8_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st2_max ) ( value 20_minimalnih_zarada ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st2_max 20_minimalnih_zarada ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st2_max 20_minimalnih_zarada ) ) ) ( make-instance ?oid of novcana_kazna_8_st2_max ( value 20_minimalnih_zarada ) ) )")
   (derived-class novcana_kazna_8_st2_max))

([kazna_cl_8_st2_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st2_min_novcana-deductive-gen436)
   (depends-on commited_8_st2 novcana_kazna_8_st2_min)
   (implies novcana_kazna_8_st2_min)
   (deductive-rule "?gen366 <- ( commited_8_st2 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ) ) => ( novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) )")
   (production-rule "( defrule kazna_cl_8_st2_min_novcana-deductive-gen436 ( declare ( salience ( calc-salience novcana_kazna_8_st2_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen366 ) ( is-a commited_8_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st2_min ) ( value 10_minimalnih_zarada ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st2_min 10_minimalnih_zarada ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st2_min 10_minimalnih_zarada ) ) ) ( make-instance ?oid of novcana_kazna_8_st2_min ( value 10_minimalnih_zarada ) ) )")
   (derived-class novcana_kazna_8_st2_min))

([kazna_cl_8_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st2_max-deductive-gen435)
   (depends-on commited_8_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen357 <- ( commited_8_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 2 ) ) ) => ( kazna_zatvora_max ( value 2 ) )")
   (production-rule "( defrule kazna_cl_8_st2_max-deductive-gen435 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen357 ) ( is-a commited_8_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 2 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 2 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_8_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st2_min-deductive-gen434)
   (depends-on commited_8_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen348 <- ( commited_8_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_8_st2_min-deductive-gen434 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen348 ) ( is-a commited_8_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_8_st1_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_max_novcana-deductive-gen433)
   (depends-on commited_8_st1 novcana_kazna_8_st1_max)
   (implies novcana_kazna_8_st1_max)
   (deductive-rule "?gen339 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ) ) => ( novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) )")
   (production-rule "( defrule kazna_cl_8_st1_max_novcana-deductive-gen433 ( declare ( salience ( calc-salience novcana_kazna_8_st1_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen339 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st1_max ) ( value 18_minimalnih_zarada ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_max 18_minimalnih_zarada ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_max 18_minimalnih_zarada ) ) ) ( make-instance ?oid of novcana_kazna_8_st1_max ( value 18_minimalnih_zarada ) ) )")
   (derived-class novcana_kazna_8_st1_max))

([kazna_cl_8_st1_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_min_novcana-deductive-gen432)
   (depends-on commited_8_st1 novcana_kazna_8_st1_min)
   (implies novcana_kazna_8_st1_min)
   (deductive-rule "?gen330 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ) ) => ( novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) )")
   (production-rule "( defrule kazna_cl_8_st1_min_novcana-deductive-gen432 ( declare ( salience ( calc-salience novcana_kazna_8_st1_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen330 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_8_st1_min ) ( value 3_minimalne_zarade ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_min 3_minimalne_zarade ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_8_st1_min 3_minimalne_zarade ) ) ) ( make-instance ?oid of novcana_kazna_8_st1_min ( value 3_minimalne_zarade ) ) )")
   (derived-class novcana_kazna_8_st1_min))

([kazna_cl_8_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_max-deductive-gen431)
   (depends-on commited_8_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen321 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 1 ) ) ) => ( kazna_zatvora_max ( value 1 ) )")
   (production-rule "( defrule kazna_cl_8_st1_max-deductive-gen431 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen321 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 1 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 1 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_8_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_8_st1_min-deductive-gen430)
   (depends-on commited_8_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen312 <- ( commited_8_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_8_st1_min-deductive-gen430 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen312 ) ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st3_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_max-deductive-gen429)
   (depends-on commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen303 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st3_max-deductive-gen429 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen303 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st3_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_min-deductive-gen428)
   (depends-on commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen294 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 6 ) ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_376_st3_min-deductive-gen428 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen294 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_max-deductive-gen427)
   (depends-on commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen285 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st2_max-deductive-gen427 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen285 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_min-deductive-gen426)
   (depends-on commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen276 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 3 ) ) ) => ( kazna_zatvora_min ( value 3 ) )")
   (production-rule "( defrule kazna_cl_376_st2_min-deductive-gen426 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen276 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 3 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 3 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_max-deductive-gen425)
   (depends-on commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen267 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 36 ) ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_376_st1_max-deductive-gen425 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen267 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_min-deductive-gen424)
   (depends-on commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen258 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_376_st1_min-deductive-gen424 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen258 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_152_st3-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st3-deductive-gen423)
   (depends-on commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (deductive-rule "?gen249 <- ( commited_152_st3 ( defendant ?Defendant ) ) ( not ( sudska_opomena ( value 1 ) ) ) => ( sudska_opomena ( value 1 ) )")
   (production-rule "( defrule kazna_cl_152_st3-deductive-gen423 ( declare ( salience ( calc-salience sudska_opomena ) ) ) ( run-deductive-rules ) ( object ( name ?gen249 ) ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a sudska_opomena ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ( make-instance ?oid of sudska_opomena ( value 1 ) ) )")
   (derived-class sudska_opomena))

([kazna_cl_152_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_max-deductive-gen422)
   (depends-on commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen240 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 36 ) ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_152_st2_max-deductive-gen422 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen240 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_152_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_min-deductive-gen421)
   (depends-on commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen231 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st2_min-deductive-gen421 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen231 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_152_st1_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max_novcana-deductive-gen420)
   (depends-on commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (deductive-rule "?gen222 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_max ( value 8000 ) ) ) => ( novcana_kazna_152_st1_max ( value 8000 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max_novcana-deductive-gen420 ( declare ( salience ( calc-salience novcana_kazna_152_st1_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen222 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_max ) ( value 8000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_max ( value 8000 ) ) )")
   (derived-class novcana_kazna_152_st1_max))

([kazna_cl_152_st1_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min_novcana-deductive-gen419)
   (depends-on commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (deductive-rule "?gen213 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_min ( value 600 ) ) ) => ( novcana_kazna_152_st1_min ( value 600 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min_novcana-deductive-gen419 ( declare ( salience ( calc-salience novcana_kazna_152_st1_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen213 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_min ) ( value 600 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_min ( value 600 ) ) )")
   (derived-class novcana_kazna_152_st1_min))

([kazna_cl_152_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max-deductive-gen418)
   (depends-on commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen204 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 12 ) ) ) => ( kazna_zatvora_max ( value 12 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max-deductive-gen418 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 12 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_152_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min-deductive-gen417)
   (depends-on commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen195 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min-deductive-gen417 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_151_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_max-deductive-gen416)
   (depends-on commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen186 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 96 ) ) ) => ( kazna_zatvora_max ( value 96 ) )")
   (production-rule "( defrule kazna_cl_151_st2_max-deductive-gen416 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 96 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 96 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 96 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 96 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_151_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_min-deductive-gen415)
   (depends-on commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen177 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 12 ) ) ) => ( kazna_zatvora_min ( value 12 ) )")
   (production-rule "( defrule kazna_cl_151_st2_min-deductive-gen415 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 12 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 12 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_151_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_max-deductive-gen414)
   (depends-on commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen168 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_151_st1_max-deductive-gen414 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_151_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_min-deductive-gen413)
   (depends-on commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen159 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 6 ) ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_151_st1_min-deductive-gen413 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_min))

([rule_10_st1-deductive] of ntm-deductive-rule
   (pos-name rule_10_st1-deductive-gen412)
   (depends-on lc:case lc:case lc:case commited_10_st1)
   (implies commited_10_st1)
   (deductive-rule "?gen144 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen145 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen146 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ( not ( commited_10_st1 ( defendant ?Defendant ) ) ) => ( commited_10_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_10_st1-deductive-gen412 ( declare ( salience ( calc-salience commited_10_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen144 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( object ( name ?gen145 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ( object ( name ?gen146 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ( not ( object ( is-a commited_10_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_10_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_10_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_10_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_10_st1))

([rule_8_st2-deductive] of ntm-deductive-rule
   (pos-name rule_8_st2-deductive-gen411)
   (depends-on lc:case lc:case lc:case commited_8_st2)
   (implies commited_8_st2)
   (deductive-rule "?gen129 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen130 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen131 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( commited_8_st2 ( defendant ?Defendant ) ) ) => ( commited_8_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_8_st2-deductive-gen411 ( declare ( salience ( calc-salience commited_8_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ( object ( name ?gen130 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ( object ( name ?gen131 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( object ( is-a commited_8_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_8_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_8_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_8_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_8_st2))

([rule_8_st1-deductive] of ntm-deductive-rule
   (pos-name rule_8_st1-deductive-gen410)
   (depends-on lc:case lc:case lc:case commited_8_st1)
   (implies commited_8_st1)
   (deductive-rule "?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen115 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ?gen116 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( commited_8_st1 ( defendant ?Defendant ) ) ) => ( commited_8_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_8_st1-deductive-gen410 ( declare ( salience ( calc-salience commited_8_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( object ( name ?gen115 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:javno_mesto \"yes\" ) ) ( object ( name ?gen116 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( not ( object ( is-a commited_8_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_8_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_8_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_8_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_8_st1))

([rule_376_st3-deductive] of ntm-deductive-rule
   (pos-name rule_376_st3-deductive-gen409)
   (depends-on lc:case commited_376_st3)
   (implies commited_376_st3)
   (deductive-rule "?gen105 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( commited_376_st3 ( defendant ?Defendant ) ) ) => ( commited_376_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st3-deductive-gen409 ( declare ( salience ( calc-salience commited_376_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( object ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st3))

([rule_376_st2-deductive] of ntm-deductive-rule
   (pos-name rule_376_st2-deductive-gen408)
   (depends-on commited_376_st1 lc:case lc:case commited_376_st2)
   (implies commited_376_st2)
   (deductive-rule "?gen90 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen91 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen92 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( commited_376_st2 ( defendant ?Defendant ) ) ) => ( commited_376_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st2-deductive-gen408 ( declare ( salience ( calc-salience commited_376_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen90 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen91 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( object ( name ?gen92 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( object ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st2))

([rule_376_st1-deductive] of ntm-deductive-rule
   (pos-name rule_376_st1-deductive-gen407)
   (depends-on lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen79 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( not ( commited_376_st1 ( defendant ?Defendant ) ) ) => ( commited_376_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st1-deductive-gen407 ( declare ( salience ( calc-salience commited_376_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ( object ( name ?gen79 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( not ( object ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st1))

([rule_152_st3-deductive] of ntm-deductive-rule
   (pos-name rule_152_st3-deductive-gen406)
   (depends-on commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (deductive-rule "?gen66 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( commited_152_st3 ( defendant ?Defendant ) ) ) => ( commited_152_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st3-deductive-gen406 ( declare ( salience ( calc-salience commited_152_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen66 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( object ( name ?gen67 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( object ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st3))

([rule_152_st2-deductive] of ntm-deductive-rule
   (pos-name rule_152_st2-deductive-gen405)
   (depends-on commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (deductive-rule "?gen54 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( commited_152_st2 ( defendant ?Defendant ) ) ) => ( commited_152_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st2-deductive-gen405 ( declare ( salience ( calc-salience commited_152_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( object ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st2))

([rule_152_st1-deductive] of ntm-deductive-rule
   (pos-name rule_152_st1-deductive-gen404)
   (depends-on lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (deductive-rule "?gen42 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( commited_152_st1 ( defendant ?Defendant ) ) ) => ( commited_152_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st1-deductive-gen404 ( declare ( salience ( calc-salience commited_152_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen43 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st1))

([rule_151_st2-deductive] of ntm-deductive-rule
   (pos-name rule_151_st2-deductive-gen403)
   (depends-on commited_151_st1 lc:case lc:case commited_151_st2)
   (implies commited_151_st2)
   (deductive-rule "?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ( not ( commited_151_st2 ( defendant ?Defendant ) ) ) => ( commited_151_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st2-deductive-gen403 ( declare ( salience ( calc-salience commited_151_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:zivotna_opasnost \"yes\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:trajna_osakacenost \"yes\" ) ) ( not ( object ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st2))

([rule_151_st1-deductive] of ntm-deductive-rule
   (pos-name rule_151_st1-deductive-gen402)
   (depends-on lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( commited_151_st1 ( defendant ?Defendant ) ) ) => ( commited_151_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st1-deductive-gen402 ( declare ( salience ( calc-salience commited_151_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st1))

