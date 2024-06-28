([kazna_cl_376_st3_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-dot-gen280)
   (depends-on declare kazna_zatvora_max commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_max] ) ) ) ?gen247 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max $? ) ) ( test ( eq ( class ?gen247 ) kazna_zatvora_max ) ) ( not ( and ?gen254 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ kazna_cl_376_st3_max $?gen249 ) ) ) ) ) ) => ?gen247 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st3_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-defeasibly-gen282)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_max] ) ) ) ?gen254 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ kazna_cl_376_st3_max $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) kazna_zatvora_max ) ) => ?gen247 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st3_max ?gen254 ) )"))

([kazna_cl_376_st3_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-dot-gen284)
   (depends-on declare kazna_zatvora_max commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_max] ) ) ) ?gen247 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) kazna_zatvora_max ) ) ( not ( and ?gen254 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( kazna_zatvora_max ( positive-defeated $?gen249 & : ( not ( member$ kazna_cl_376_st3_max $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ kazna_cl_376_st3_max-overruled $?gen250 ) ) ) ) ?gen247 <- ( kazna_zatvora_max ( negative-overruled $?gen252 ) )"))

([kazna_cl_376_st3_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-overruled-gen286)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_max] ) ) ) ?gen254 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ kazna_cl_376_st3_max $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen252 ( create$ kazna_cl_376_st3_max-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( kazna_zatvora_max ( negative-overruled $?gen252 ) )"))

([kazna_cl_376_st3_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_max-support-gen288)
   (depends-on declare commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_max] ) ) ) ?gen246 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen247 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_max ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen252 ( create$ kazna_cl_376_st3_max ?gen246 $?gen249 ) ) ) ?gen247 <- ( kazna_zatvora_max ( positive-support $?gen252 ) )"))

([kazna_cl_376_st3_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-dot-gen290)
   (depends-on declare kazna_zatvora_min commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st3_min] ) ) ) ?gen238 <- ( kazna_zatvora_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min $? ) ) ( test ( eq ( class ?gen238 ) kazna_zatvora_min ) ) ( not ( and ?gen245 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ kazna_cl_376_st3_min $?gen240 ) ) ) ) ) ) => ?gen238 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st3_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-defeasibly-gen292)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st3_min] ) ) ) ?gen245 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( kazna_zatvora_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ kazna_cl_376_st3_min $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) kazna_zatvora_min ) ) => ?gen238 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st3_min ?gen245 ) )"))

([kazna_cl_376_st3_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-dot-gen294)
   (depends-on declare kazna_zatvora_min commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st3_min] ) ) ) ?gen238 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) kazna_zatvora_min ) ) ( not ( and ?gen245 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( kazna_zatvora_min ( positive-defeated $?gen240 & : ( not ( member$ kazna_cl_376_st3_min $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ kazna_cl_376_st3_min-overruled $?gen241 ) ) ) ) ?gen238 <- ( kazna_zatvora_min ( negative-overruled $?gen243 ) )"))

([kazna_cl_376_st3_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-overruled-gen296)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st3_min] ) ) ) ?gen245 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ kazna_cl_376_st3_min $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen243 ( create$ kazna_cl_376_st3_min-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( kazna_zatvora_min ( negative-overruled $?gen243 ) )"))

([kazna_cl_376_st3_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st3_min-support-gen298)
   (depends-on declare commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st3_min] ) ) ) ?gen237 <- ( commited_376_st3 ( defendant ?Defendant ) ) ?gen238 <- ( kazna_zatvora_min ( value 6 ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ kazna_cl_376_st3_min ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen243 ( create$ kazna_cl_376_st3_min ?gen237 $?gen240 ) ) ) ?gen238 <- ( kazna_zatvora_min ( positive-support $?gen243 ) )"))

([kazna_cl_376_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-dot-gen300)
   (depends-on declare kazna_zatvora_max commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_max] ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max $? ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) ( not ( and ?gen236 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ kazna_cl_376_st2_max $?gen231 ) ) ) ) ) ) => ?gen229 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-defeasibly-gen302)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_max] ) ) ) ?gen236 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ kazna_cl_376_st2_max $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ?gen229 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st2_max ?gen236 ) )"))

([kazna_cl_376_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-dot-gen304)
   (depends-on declare kazna_zatvora_max commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_max] ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) ( not ( and ?gen236 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( positive-defeated $?gen231 & : ( not ( member$ kazna_cl_376_st2_max $?gen231 ) ) ) ) ) ) => ( calc ( bind $?gen234 ( delete-member$ $?gen233 ( create$ kazna_cl_376_st2_max-overruled $?gen232 ) ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative-overruled $?gen234 ) )"))

([kazna_cl_376_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-overruled-gen306)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_max] ) ) ) ?gen236 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( positive-defeated $?gen231 & : ( not ( member$ kazna_cl_376_st2_max $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen234 ( create$ kazna_cl_376_st2_max-overruled $?gen232 $?gen233 ) ) ) ?gen229 <- ( kazna_zatvora_max ( negative-overruled $?gen234 ) )"))

([kazna_cl_376_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_max-support-gen308)
   (depends-on declare commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_max] ) ) ) ?gen228 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen229 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen231 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_max ?gen228 $$$ $?gen231 ) ) ) ) ) ( test ( eq ( class ?gen229 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen234 ( create$ kazna_cl_376_st2_max ?gen228 $?gen231 ) ) ) ?gen229 <- ( kazna_zatvora_max ( positive-support $?gen234 ) )"))

([kazna_cl_376_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-dot-gen310)
   (depends-on declare kazna_zatvora_min commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st2_min] ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 3 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min $? ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) ( not ( and ?gen227 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ kazna_cl_376_st2_min $?gen222 ) ) ) ) ) ) => ?gen220 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-defeasibly-gen312)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st2_min] ) ) ) ?gen227 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ kazna_cl_376_st2_min $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ?gen220 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st2_min ?gen227 ) )"))

([kazna_cl_376_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-dot-gen314)
   (depends-on declare kazna_zatvora_min commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st2_min] ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 3 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) ( not ( and ?gen227 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( positive-defeated $?gen222 & : ( not ( member$ kazna_cl_376_st2_min $?gen222 ) ) ) ) ) ) => ( calc ( bind $?gen225 ( delete-member$ $?gen224 ( create$ kazna_cl_376_st2_min-overruled $?gen223 ) ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative-overruled $?gen225 ) )"))

([kazna_cl_376_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-overruled-gen316)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st2_min] ) ) ) ?gen227 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( kazna_zatvora_min ( value 3 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( positive-defeated $?gen222 & : ( not ( member$ kazna_cl_376_st2_min $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen225 ( create$ kazna_cl_376_st2_min-overruled $?gen223 $?gen224 ) ) ) ?gen220 <- ( kazna_zatvora_min ( negative-overruled $?gen225 ) )"))

([kazna_cl_376_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st2_min-support-gen318)
   (depends-on declare commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st2_min] ) ) ) ?gen219 <- ( commited_376_st2 ( defendant ?Defendant ) ) ?gen220 <- ( kazna_zatvora_min ( value 3 ) ( positive-support $?gen222 & : ( not ( subseq-pos ( create$ kazna_cl_376_st2_min ?gen219 $$$ $?gen222 ) ) ) ) ) ( test ( eq ( class ?gen220 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen225 ( create$ kazna_cl_376_st2_min ?gen219 $?gen222 ) ) ) ?gen220 <- ( kazna_zatvora_min ( positive-support $?gen225 ) )"))

([kazna_cl_376_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-dot-gen320)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_max] ) ) ) ?gen211 <- ( kazna_zatvora_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max $? ) ) ( test ( eq ( class ?gen211 ) kazna_zatvora_max ) ) ( not ( and ?gen218 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ kazna_cl_376_st1_max $?gen213 ) ) ) ) ) ) => ?gen211 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_376_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-defeasibly-gen322)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_max] ) ) ) ?gen218 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( kazna_zatvora_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ kazna_cl_376_st1_max $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) kazna_zatvora_max ) ) => ?gen211 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_376_st1_max ?gen218 ) )"))

([kazna_cl_376_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-dot-gen324)
   (depends-on declare kazna_zatvora_max commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_max] ) ) ) ?gen211 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( test ( eq ( class ?gen211 ) kazna_zatvora_max ) ) ( not ( and ?gen218 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( kazna_zatvora_max ( positive-defeated $?gen213 & : ( not ( member$ kazna_cl_376_st1_max $?gen213 ) ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen215 ( create$ kazna_cl_376_st1_max-overruled $?gen214 ) ) ) ) ?gen211 <- ( kazna_zatvora_max ( negative-overruled $?gen216 ) )"))

([kazna_cl_376_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-overruled-gen326)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_max] ) ) ) ?gen218 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( positive-defeated $?gen213 & : ( not ( member$ kazna_cl_376_st1_max $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen216 ( create$ kazna_cl_376_st1_max-overruled $?gen214 $?gen215 ) ) ) ?gen211 <- ( kazna_zatvora_max ( negative-overruled $?gen216 ) )"))

([kazna_cl_376_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_max-support-gen328)
   (depends-on declare commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_max] ) ) ) ?gen210 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen211 <- ( kazna_zatvora_max ( value 36 ) ( positive-support $?gen213 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_max ?gen210 $$$ $?gen213 ) ) ) ) ) ( test ( eq ( class ?gen211 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen216 ( create$ kazna_cl_376_st1_max ?gen210 $?gen213 ) ) ) ?gen211 <- ( kazna_zatvora_max ( positive-support $?gen216 ) )"))

([kazna_cl_376_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-dot-gen330)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_376_st1_min] ) ) ) ?gen202 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min $? ) ) ( test ( eq ( class ?gen202 ) kazna_zatvora_min ) ) ( not ( and ?gen209 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ kazna_cl_376_st1_min $?gen204 ) ) ) ) ) ) => ?gen202 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_376_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-defeasibly-gen332)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_376_st1_min] ) ) ) ?gen209 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ kazna_cl_376_st1_min $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) kazna_zatvora_min ) ) => ?gen202 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_376_st1_min ?gen209 ) )"))

([kazna_cl_376_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-dot-gen334)
   (depends-on declare kazna_zatvora_min commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_376_st1_min] ) ) ) ?gen202 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( test ( eq ( class ?gen202 ) kazna_zatvora_min ) ) ( not ( and ?gen209 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( kazna_zatvora_min ( positive-defeated $?gen204 & : ( not ( member$ kazna_cl_376_st1_min $?gen204 ) ) ) ) ) ) => ( calc ( bind $?gen207 ( delete-member$ $?gen206 ( create$ kazna_cl_376_st1_min-overruled $?gen205 ) ) ) ) ?gen202 <- ( kazna_zatvora_min ( negative-overruled $?gen207 ) )"))

([kazna_cl_376_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-overruled-gen336)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_376_st1_min] ) ) ) ?gen209 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( positive-defeated $?gen204 & : ( not ( member$ kazna_cl_376_st1_min $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen207 ( create$ kazna_cl_376_st1_min-overruled $?gen205 $?gen206 ) ) ) ?gen202 <- ( kazna_zatvora_min ( negative-overruled $?gen207 ) )"))

([kazna_cl_376_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_376_st1_min-support-gen338)
   (depends-on declare commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_376_st1_min] ) ) ) ?gen201 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen202 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen204 & : ( not ( subseq-pos ( create$ kazna_cl_376_st1_min ?gen201 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen202 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen207 ( create$ kazna_cl_376_st1_min ?gen201 $?gen204 ) ) ) ?gen202 <- ( kazna_zatvora_min ( positive-support $?gen207 ) )"))

([kazna_cl_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-dot-gen340)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st3] ) ) ) ?gen193 <- ( sudska_opomena ( value 1 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st3 $? ) ) ( test ( eq ( class ?gen193 ) sudska_opomena ) ) ( not ( and ?gen200 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( sudska_opomena ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ kazna_cl_152_st3 $?gen195 ) ) ) ) ) ) => ?gen193 <- ( sudska_opomena ( positive 0 ) )"))

([kazna_cl_152_st3-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-defeasibly-gen342)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st3] ) ) ) ?gen200 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( sudska_opomena ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ kazna_cl_152_st3 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) sudska_opomena ) ) => ?gen193 <- ( sudska_opomena ( positive 1 ) ( positive-derivator kazna_cl_152_st3 ?gen200 ) )"))

([kazna_cl_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-dot-gen344)
   (depends-on declare sudska_opomena commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st3] ) ) ) ?gen193 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( test ( eq ( class ?gen193 ) sudska_opomena ) ) ( not ( and ?gen200 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( sudska_opomena ( positive-defeated $?gen195 & : ( not ( member$ kazna_cl_152_st3 $?gen195 ) ) ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen197 ( create$ kazna_cl_152_st3-overruled $?gen196 ) ) ) ) ?gen193 <- ( sudska_opomena ( negative-overruled $?gen198 ) )"))

([kazna_cl_152_st3-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-overruled-gen346)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st3] ) ) ) ?gen200 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( sudska_opomena ( value 1 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( positive-defeated $?gen195 & : ( not ( member$ kazna_cl_152_st3 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) sudska_opomena ) ) => ( calc ( bind $?gen198 ( create$ kazna_cl_152_st3-overruled $?gen196 $?gen197 ) ) ) ?gen193 <- ( sudska_opomena ( negative-overruled $?gen198 ) )"))

([kazna_cl_152_st3-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st3-support-gen348)
   (depends-on declare commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st3] ) ) ) ?gen192 <- ( commited_152_st3 ( defendant ?Defendant ) ) ?gen193 <- ( sudska_opomena ( value 1 ) ( positive-support $?gen195 & : ( not ( subseq-pos ( create$ kazna_cl_152_st3 ?gen192 $$$ $?gen195 ) ) ) ) ) ( test ( eq ( class ?gen193 ) sudska_opomena ) ) => ( calc ( bind $?gen198 ( create$ kazna_cl_152_st3 ?gen192 $?gen195 ) ) ) ?gen193 <- ( sudska_opomena ( positive-support $?gen198 ) )"))

([kazna_cl_152_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-dot-gen350)
   (depends-on declare kazna_zatvora_max commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_max] ) ) ) ?gen184 <- ( kazna_zatvora_max ( value 36 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max $? ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_max ) ) ( not ( and ?gen191 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ kazna_cl_152_st2_max $?gen186 ) ) ) ) ) ) => ?gen184 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_152_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-defeasibly-gen352)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_max] ) ) ) ?gen191 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_max ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ kazna_cl_152_st2_max $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_max ) ) => ?gen184 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_152_st2_max ?gen191 ) )"))

([kazna_cl_152_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-dot-gen354)
   (depends-on declare kazna_zatvora_max commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_max] ) ) ) ?gen184 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_max ) ) ( not ( and ?gen191 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_max ( positive-defeated $?gen186 & : ( not ( member$ kazna_cl_152_st2_max $?gen186 ) ) ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen188 ( create$ kazna_cl_152_st2_max-overruled $?gen187 ) ) ) ) ?gen184 <- ( kazna_zatvora_max ( negative-overruled $?gen189 ) )"))

([kazna_cl_152_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-overruled-gen356)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_max] ) ) ) ?gen191 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( kazna_zatvora_max ( value 36 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( positive-defeated $?gen186 & : ( not ( member$ kazna_cl_152_st2_max $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen189 ( create$ kazna_cl_152_st2_max-overruled $?gen187 $?gen188 ) ) ) ?gen184 <- ( kazna_zatvora_max ( negative-overruled $?gen189 ) )"))

([kazna_cl_152_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_max-support-gen358)
   (depends-on declare commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_max] ) ) ) ?gen183 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen184 <- ( kazna_zatvora_max ( value 36 ) ( positive-support $?gen186 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_max ?gen183 $$$ $?gen186 ) ) ) ) ) ( test ( eq ( class ?gen184 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen189 ( create$ kazna_cl_152_st2_max ?gen183 $?gen186 ) ) ) ?gen184 <- ( kazna_zatvora_max ( positive-support $?gen189 ) )"))

([kazna_cl_152_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-dot-gen360)
   (depends-on declare kazna_zatvora_min commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st2_min] ) ) ) ?gen175 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min $? ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_min ) ) ( not ( and ?gen182 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ kazna_cl_152_st2_min $?gen177 ) ) ) ) ) ) => ?gen175 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_152_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-defeasibly-gen362)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st2_min] ) ) ) ?gen182 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ kazna_cl_152_st2_min $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_min ) ) => ?gen175 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_152_st2_min ?gen182 ) )"))

([kazna_cl_152_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-dot-gen364)
   (depends-on declare kazna_zatvora_min commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st2_min] ) ) ) ?gen175 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_min ) ) ( not ( and ?gen182 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_min ( positive-defeated $?gen177 & : ( not ( member$ kazna_cl_152_st2_min $?gen177 ) ) ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen179 ( create$ kazna_cl_152_st2_min-overruled $?gen178 ) ) ) ) ?gen175 <- ( kazna_zatvora_min ( negative-overruled $?gen180 ) )"))

([kazna_cl_152_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-overruled-gen366)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st2_min] ) ) ) ?gen182 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( positive-defeated $?gen177 & : ( not ( member$ kazna_cl_152_st2_min $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen180 ( create$ kazna_cl_152_st2_min-overruled $?gen178 $?gen179 ) ) ) ?gen175 <- ( kazna_zatvora_min ( negative-overruled $?gen180 ) )"))

([kazna_cl_152_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st2_min-support-gen368)
   (depends-on declare commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st2_min] ) ) ) ?gen174 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen175 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen177 & : ( not ( subseq-pos ( create$ kazna_cl_152_st2_min ?gen174 $$$ $?gen177 ) ) ) ) ) ( test ( eq ( class ?gen175 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen180 ( create$ kazna_cl_152_st2_min ?gen174 $?gen177 ) ) ) ?gen175 <- ( kazna_zatvora_min ( positive-support $?gen180 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-dot-gen370)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana $? ) ) ( test ( eq ( class ?gen166 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen173 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen168 ) ) ) ) ) ) => ?gen166 <- ( novcana_kazna_152_st1_max ( positive 0 ) )"))

([kazna_cl_152_st1_max_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-defeasibly-gen372)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen173 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) novcana_kazna_152_st1_max ) ) => ?gen166 <- ( novcana_kazna_152_st1_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max_novcana ?gen173 ) )"))

([kazna_cl_152_st1_max_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-dot-gen374)
   (depends-on declare novcana_kazna_152_st1_max commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( test ( eq ( class ?gen166 ) novcana_kazna_152_st1_max ) ) ( not ( and ?gen173 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( positive-defeated $?gen168 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen168 ) ) ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen170 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen169 ) ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen171 ) )"))

([kazna_cl_152_st1_max_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-overruled-gen376)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen173 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( positive-defeated $?gen168 & : ( not ( member$ kazna_cl_152_st1_max_novcana $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen171 ( create$ kazna_cl_152_st1_max_novcana-overruled $?gen169 $?gen170 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( negative-overruled $?gen171 ) )"))

([kazna_cl_152_st1_max_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max_novcana-support-gen378)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max_novcana] ) ) ) ?gen165 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( value 8000 ) ( positive-support $?gen168 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max_novcana ?gen165 $$$ $?gen168 ) ) ) ) ) ( test ( eq ( class ?gen166 ) novcana_kazna_152_st1_max ) ) => ( calc ( bind $?gen171 ( create$ kazna_cl_152_st1_max_novcana ?gen165 $?gen168 ) ) ) ?gen166 <- ( novcana_kazna_152_st1_max ( positive-support $?gen171 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-dot-gen380)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana $? ) ) ( test ( eq ( class ?gen157 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen164 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen159 ) ) ) ) ) ) => ?gen157 <- ( novcana_kazna_152_st1_min ( positive 0 ) )"))

([kazna_cl_152_st1_min_novcana-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-defeasibly-gen382)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen164 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) novcana_kazna_152_st1_min ) ) => ?gen157 <- ( novcana_kazna_152_st1_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min_novcana ?gen164 ) )"))

([kazna_cl_152_st1_min_novcana-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-dot-gen384)
   (depends-on declare novcana_kazna_152_st1_min commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( test ( eq ( class ?gen157 ) novcana_kazna_152_st1_min ) ) ( not ( and ?gen164 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( positive-defeated $?gen159 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen159 ) ) ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen161 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen160 ) ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen162 ) )"))

([kazna_cl_152_st1_min_novcana-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-overruled-gen386)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen164 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( value 600 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( positive-defeated $?gen159 & : ( not ( member$ kazna_cl_152_st1_min_novcana $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen162 ( create$ kazna_cl_152_st1_min_novcana-overruled $?gen160 $?gen161 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( negative-overruled $?gen162 ) )"))

([kazna_cl_152_st1_min_novcana-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min_novcana-support-gen388)
   (depends-on declare commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min_novcana] ) ) ) ?gen156 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( value 600 ) ( positive-support $?gen159 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min_novcana ?gen156 $$$ $?gen159 ) ) ) ) ) ( test ( eq ( class ?gen157 ) novcana_kazna_152_st1_min ) ) => ( calc ( bind $?gen162 ( create$ kazna_cl_152_st1_min_novcana ?gen156 $?gen159 ) ) ) ?gen157 <- ( novcana_kazna_152_st1_min ( positive-support $?gen162 ) )"))

([kazna_cl_152_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-dot-gen390)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_max] ) ) ) ?gen148 <- ( kazna_zatvora_max ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max $? ) ) ( test ( eq ( class ?gen148 ) kazna_zatvora_max ) ) ( not ( and ?gen155 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ kazna_cl_152_st1_max $?gen150 ) ) ) ) ) ) => ?gen148 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_152_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-defeasibly-gen392)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_max] ) ) ) ?gen155 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( kazna_zatvora_max ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ kazna_cl_152_st1_max $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) kazna_zatvora_max ) ) => ?gen148 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_152_st1_max ?gen155 ) )"))

([kazna_cl_152_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-dot-gen394)
   (depends-on declare kazna_zatvora_max commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_max] ) ) ) ?gen148 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( test ( eq ( class ?gen148 ) kazna_zatvora_max ) ) ( not ( and ?gen155 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( kazna_zatvora_max ( positive-defeated $?gen150 & : ( not ( member$ kazna_cl_152_st1_max $?gen150 ) ) ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen152 ( create$ kazna_cl_152_st1_max-overruled $?gen151 ) ) ) ) ?gen148 <- ( kazna_zatvora_max ( negative-overruled $?gen153 ) )"))

([kazna_cl_152_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-overruled-gen396)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_max] ) ) ) ?gen155 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( kazna_zatvora_max ( value 12 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( positive-defeated $?gen150 & : ( not ( member$ kazna_cl_152_st1_max $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen153 ( create$ kazna_cl_152_st1_max-overruled $?gen151 $?gen152 ) ) ) ?gen148 <- ( kazna_zatvora_max ( negative-overruled $?gen153 ) )"))

([kazna_cl_152_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_max-support-gen398)
   (depends-on declare commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_max] ) ) ) ?gen147 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen148 <- ( kazna_zatvora_max ( value 12 ) ( positive-support $?gen150 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_max ?gen147 $$$ $?gen150 ) ) ) ) ) ( test ( eq ( class ?gen148 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen153 ( create$ kazna_cl_152_st1_max ?gen147 $?gen150 ) ) ) ?gen148 <- ( kazna_zatvora_max ( positive-support $?gen153 ) )"))

([kazna_cl_152_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-dot-gen400)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_152_st1_min] ) ) ) ?gen139 <- ( kazna_zatvora_min ( value 0 ) ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min $? ) ) ( test ( eq ( class ?gen139 ) kazna_zatvora_min ) ) ( not ( and ?gen146 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ kazna_cl_152_st1_min $?gen141 ) ) ) ) ) ) => ?gen139 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_152_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-defeasibly-gen402)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_152_st1_min] ) ) ) ?gen146 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( kazna_zatvora_min ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ kazna_cl_152_st1_min $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) kazna_zatvora_min ) ) => ?gen139 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_152_st1_min ?gen146 ) )"))

([kazna_cl_152_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-dot-gen404)
   (depends-on declare kazna_zatvora_min commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_152_st1_min] ) ) ) ?gen139 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( test ( eq ( class ?gen139 ) kazna_zatvora_min ) ) ( not ( and ?gen146 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( kazna_zatvora_min ( positive-defeated $?gen141 & : ( not ( member$ kazna_cl_152_st1_min $?gen141 ) ) ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen143 ( create$ kazna_cl_152_st1_min-overruled $?gen142 ) ) ) ) ?gen139 <- ( kazna_zatvora_min ( negative-overruled $?gen144 ) )"))

([kazna_cl_152_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-overruled-gen406)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_152_st1_min] ) ) ) ?gen146 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( kazna_zatvora_min ( value 0 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( positive-defeated $?gen141 & : ( not ( member$ kazna_cl_152_st1_min $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen144 ( create$ kazna_cl_152_st1_min-overruled $?gen142 $?gen143 ) ) ) ?gen139 <- ( kazna_zatvora_min ( negative-overruled $?gen144 ) )"))

([kazna_cl_152_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_152_st1_min-support-gen408)
   (depends-on declare commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_152_st1_min] ) ) ) ?gen138 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen139 <- ( kazna_zatvora_min ( value 0 ) ( positive-support $?gen141 & : ( not ( subseq-pos ( create$ kazna_cl_152_st1_min ?gen138 $$$ $?gen141 ) ) ) ) ) ( test ( eq ( class ?gen139 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen144 ( create$ kazna_cl_152_st1_min ?gen138 $?gen141 ) ) ) ?gen139 <- ( kazna_zatvora_min ( positive-support $?gen144 ) )"))

([kazna_cl_151_st2_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-dot-gen410)
   (depends-on declare kazna_zatvora_max commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_max] ) ) ) ?gen130 <- ( kazna_zatvora_max ( value 96 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max $? ) ) ( test ( eq ( class ?gen130 ) kazna_zatvora_max ) ) ( not ( and ?gen137 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ kazna_cl_151_st2_max $?gen132 ) ) ) ) ) ) => ?gen130 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_151_st2_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-defeasibly-gen412)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_max] ) ) ) ?gen137 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( kazna_zatvora_max ( value 96 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ kazna_cl_151_st2_max $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) kazna_zatvora_max ) ) => ?gen130 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_151_st2_max ?gen137 ) )"))

([kazna_cl_151_st2_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-dot-gen414)
   (depends-on declare kazna_zatvora_max commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_max] ) ) ) ?gen130 <- ( kazna_zatvora_max ( value 96 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( test ( eq ( class ?gen130 ) kazna_zatvora_max ) ) ( not ( and ?gen137 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( kazna_zatvora_max ( positive-defeated $?gen132 & : ( not ( member$ kazna_cl_151_st2_max $?gen132 ) ) ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen134 ( create$ kazna_cl_151_st2_max-overruled $?gen133 ) ) ) ) ?gen130 <- ( kazna_zatvora_max ( negative-overruled $?gen135 ) )"))

([kazna_cl_151_st2_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-overruled-gen416)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_max] ) ) ) ?gen137 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( kazna_zatvora_max ( value 96 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( positive-defeated $?gen132 & : ( not ( member$ kazna_cl_151_st2_max $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen135 ( create$ kazna_cl_151_st2_max-overruled $?gen133 $?gen134 ) ) ) ?gen130 <- ( kazna_zatvora_max ( negative-overruled $?gen135 ) )"))

([kazna_cl_151_st2_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_max-support-gen418)
   (depends-on declare commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_max] ) ) ) ?gen129 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen130 <- ( kazna_zatvora_max ( value 96 ) ( positive-support $?gen132 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_max ?gen129 $$$ $?gen132 ) ) ) ) ) ( test ( eq ( class ?gen130 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen135 ( create$ kazna_cl_151_st2_max ?gen129 $?gen132 ) ) ) ?gen130 <- ( kazna_zatvora_max ( positive-support $?gen135 ) )"))

([kazna_cl_151_st2_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-dot-gen420)
   (depends-on declare kazna_zatvora_min commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st2_min] ) ) ) ?gen121 <- ( kazna_zatvora_min ( value 12 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min $? ) ) ( test ( eq ( class ?gen121 ) kazna_zatvora_min ) ) ( not ( and ?gen128 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ kazna_cl_151_st2_min $?gen123 ) ) ) ) ) ) => ?gen121 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_151_st2_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-defeasibly-gen422)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st2_min] ) ) ) ?gen128 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( kazna_zatvora_min ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ kazna_cl_151_st2_min $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) kazna_zatvora_min ) ) => ?gen121 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_151_st2_min ?gen128 ) )"))

([kazna_cl_151_st2_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-dot-gen424)
   (depends-on declare kazna_zatvora_min commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st2_min] ) ) ) ?gen121 <- ( kazna_zatvora_min ( value 12 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( test ( eq ( class ?gen121 ) kazna_zatvora_min ) ) ( not ( and ?gen128 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( kazna_zatvora_min ( positive-defeated $?gen123 & : ( not ( member$ kazna_cl_151_st2_min $?gen123 ) ) ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen125 ( create$ kazna_cl_151_st2_min-overruled $?gen124 ) ) ) ) ?gen121 <- ( kazna_zatvora_min ( negative-overruled $?gen126 ) )"))

([kazna_cl_151_st2_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-overruled-gen426)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st2_min] ) ) ) ?gen128 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( kazna_zatvora_min ( value 12 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( positive-defeated $?gen123 & : ( not ( member$ kazna_cl_151_st2_min $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen126 ( create$ kazna_cl_151_st2_min-overruled $?gen124 $?gen125 ) ) ) ?gen121 <- ( kazna_zatvora_min ( negative-overruled $?gen126 ) )"))

([kazna_cl_151_st2_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st2_min-support-gen428)
   (depends-on declare commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st2_min] ) ) ) ?gen120 <- ( commited_151_st2 ( defendant ?Defendant ) ) ?gen121 <- ( kazna_zatvora_min ( value 12 ) ( positive-support $?gen123 & : ( not ( subseq-pos ( create$ kazna_cl_151_st2_min ?gen120 $$$ $?gen123 ) ) ) ) ) ( test ( eq ( class ?gen121 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen126 ( create$ kazna_cl_151_st2_min ?gen120 $?gen123 ) ) ) ?gen121 <- ( kazna_zatvora_min ( positive-support $?gen126 ) )"))

([kazna_cl_151_st1_max-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-dot-gen430)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_max] ) ) ) ?gen112 <- ( kazna_zatvora_max ( value 60 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max $? ) ) ( test ( eq ( class ?gen112 ) kazna_zatvora_max ) ) ( not ( and ?gen119 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( kazna_zatvora_max ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ kazna_cl_151_st1_max $?gen114 ) ) ) ) ) ) => ?gen112 <- ( kazna_zatvora_max ( positive 0 ) )"))

([kazna_cl_151_st1_max-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-defeasibly-gen432)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_max] ) ) ) ?gen119 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( kazna_zatvora_max ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ kazna_cl_151_st1_max $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) kazna_zatvora_max ) ) => ?gen112 <- ( kazna_zatvora_max ( positive 1 ) ( positive-derivator kazna_cl_151_st1_max ?gen119 ) )"))

([kazna_cl_151_st1_max-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-dot-gen434)
   (depends-on declare kazna_zatvora_max commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_max] ) ) ) ?gen112 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( test ( eq ( class ?gen112 ) kazna_zatvora_max ) ) ( not ( and ?gen119 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( kazna_zatvora_max ( positive-defeated $?gen114 & : ( not ( member$ kazna_cl_151_st1_max $?gen114 ) ) ) ) ) ) => ( calc ( bind $?gen117 ( delete-member$ $?gen116 ( create$ kazna_cl_151_st1_max-overruled $?gen115 ) ) ) ) ?gen112 <- ( kazna_zatvora_max ( negative-overruled $?gen117 ) )"))

([kazna_cl_151_st1_max-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-overruled-gen436)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_max] ) ) ) ?gen119 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( kazna_zatvora_max ( value 60 ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( positive-defeated $?gen114 & : ( not ( member$ kazna_cl_151_st1_max $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen117 ( create$ kazna_cl_151_st1_max-overruled $?gen115 $?gen116 ) ) ) ?gen112 <- ( kazna_zatvora_max ( negative-overruled $?gen117 ) )"))

([kazna_cl_151_st1_max-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_max-support-gen438)
   (depends-on declare commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_max] ) ) ) ?gen111 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen112 <- ( kazna_zatvora_max ( value 60 ) ( positive-support $?gen114 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_max ?gen111 $$$ $?gen114 ) ) ) ) ) ( test ( eq ( class ?gen112 ) kazna_zatvora_max ) ) => ( calc ( bind $?gen117 ( create$ kazna_cl_151_st1_max ?gen111 $?gen114 ) ) ) ?gen112 <- ( kazna_zatvora_max ( positive-support $?gen117 ) )"))

([kazna_cl_151_st1_min-defeasibly-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-dot-gen440)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [kazna_cl_151_st1_min] ) ) ) ?gen103 <- ( kazna_zatvora_min ( value 6 ) ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min $? ) ) ( test ( eq ( class ?gen103 ) kazna_zatvora_min ) ) ( not ( and ?gen110 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( kazna_zatvora_min ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ kazna_cl_151_st1_min $?gen105 ) ) ) ) ) ) => ?gen103 <- ( kazna_zatvora_min ( positive 0 ) )"))

([kazna_cl_151_st1_min-defeasibly] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-defeasibly-gen442)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [kazna_cl_151_st1_min] ) ) ) ?gen110 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( kazna_zatvora_min ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ kazna_cl_151_st1_min $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) kazna_zatvora_min ) ) => ?gen103 <- ( kazna_zatvora_min ( positive 1 ) ( positive-derivator kazna_cl_151_st1_min ?gen110 ) )"))

([kazna_cl_151_st1_min-overruled-dot] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-dot-gen444)
   (depends-on declare kazna_zatvora_min commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [kazna_cl_151_st1_min] ) ) ) ?gen103 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( test ( eq ( class ?gen103 ) kazna_zatvora_min ) ) ( not ( and ?gen110 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( kazna_zatvora_min ( positive-defeated $?gen105 & : ( not ( member$ kazna_cl_151_st1_min $?gen105 ) ) ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen107 ( create$ kazna_cl_151_st1_min-overruled $?gen106 ) ) ) ) ?gen103 <- ( kazna_zatvora_min ( negative-overruled $?gen108 ) )"))

([kazna_cl_151_st1_min-overruled] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-overruled-gen446)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [kazna_cl_151_st1_min] ) ) ) ?gen110 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen103 <- ( kazna_zatvora_min ( value 6 ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( positive-defeated $?gen105 & : ( not ( member$ kazna_cl_151_st1_min $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen108 ( create$ kazna_cl_151_st1_min-overruled $?gen106 $?gen107 ) ) ) ?gen103 <- ( kazna_zatvora_min ( negative-overruled $?gen108 ) )"))

([kazna_cl_151_st1_min-support] of derived-attribute-rule
   (pos-name kazna_cl_151_st1_min-support-gen448)
   (depends-on declare commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [kazna_cl_151_st1_min] ) ) ) ?gen102 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen103 <- ( kazna_zatvora_min ( value 6 ) ( positive-support $?gen105 & : ( not ( subseq-pos ( create$ kazna_cl_151_st1_min ?gen102 $$$ $?gen105 ) ) ) ) ) ( test ( eq ( class ?gen103 ) kazna_zatvora_min ) ) => ( calc ( bind $?gen108 ( create$ kazna_cl_151_st1_min ?gen102 $?gen105 ) ) ) ?gen103 <- ( kazna_zatvora_min ( positive-support $?gen108 ) )"))

([rule_376_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-dot-gen450)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st3] ) ) ) ?gen94 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st3 $? ) ) ( test ( eq ( class ?gen94 ) commited_376_st3 ) ) ( not ( and ?gen101 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( commited_376_st3 ( negative ~ 2 ) ( positive-overruled $?gen96 & : ( not ( member$ rule_376_st3 $?gen96 ) ) ) ) ) ) => ?gen94 <- ( commited_376_st3 ( positive 0 ) )"))

([rule_376_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st3-defeasibly-gen452)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st3] ) ) ) ?gen101 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen96 & : ( not ( member$ rule_376_st3 $?gen96 ) ) ) ) ( test ( eq ( class ?gen94 ) commited_376_st3 ) ) => ?gen94 <- ( commited_376_st3 ( positive 1 ) ( positive-derivator rule_376_st3 ?gen101 ) )"))

([rule_376_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-dot-gen454)
   (depends-on declare commited_376_st3 lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st3] ) ) ) ?gen94 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen97 ) ( negative-overruled $?gen98 & : ( subseq-pos ( create$ rule_376_st3-overruled $?gen97 $$$ $?gen98 ) ) ) ) ( test ( eq ( class ?gen94 ) commited_376_st3 ) ) ( not ( and ?gen101 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( commited_376_st3 ( positive-defeated $?gen96 & : ( not ( member$ rule_376_st3 $?gen96 ) ) ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen98 ( create$ rule_376_st3-overruled $?gen97 ) ) ) ) ?gen94 <- ( commited_376_st3 ( negative-overruled $?gen99 ) )"))

([rule_376_st3-overruled] of derived-attribute-rule
   (pos-name rule_376_st3-overruled-gen456)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st3] ) ) ) ?gen101 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ( positive ?gen100 & : ( >= ?gen100 1 ) ) ) ?gen94 <- ( commited_376_st3 ( defendant ?Defendant ) ( negative-support $?gen97 ) ( negative-overruled $?gen98 & : ( not ( subseq-pos ( create$ rule_376_st3-overruled $?gen97 $$$ $?gen98 ) ) ) ) ( positive-defeated $?gen96 & : ( not ( member$ rule_376_st3 $?gen96 ) ) ) ) ( test ( eq ( class ?gen94 ) commited_376_st3 ) ) => ( calc ( bind $?gen99 ( create$ rule_376_st3-overruled $?gen97 $?gen98 ) ) ) ?gen94 <- ( commited_376_st3 ( negative-overruled $?gen99 ) )"))

([rule_376_st3-support] of derived-attribute-rule
   (pos-name rule_376_st3-support-gen458)
   (depends-on declare lc:case commited_376_st3)
   (implies commited_376_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st3] ) ) ) ?gen93 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ?gen94 <- ( commited_376_st3 ( defendant ?Defendant ) ( positive-support $?gen96 & : ( not ( subseq-pos ( create$ rule_376_st3 ?gen93 $$$ $?gen96 ) ) ) ) ) ( test ( eq ( class ?gen94 ) commited_376_st3 ) ) => ( calc ( bind $?gen99 ( create$ rule_376_st3 ?gen93 $?gen96 ) ) ) ?gen94 <- ( commited_376_st3 ( positive-support $?gen99 ) )"))

([rule_376_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st2-defeasibly-dot-gen460)
   (depends-on declare commited_376_st2 commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st2] ) ) ) ?gen85 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st2 $? ) ) ( test ( eq ( class ?gen85 ) commited_376_st2 ) ) ( not ( and ?gen92 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( commited_376_st2 ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule_376_st2 $?gen87 ) ) ) ) ) ) => ?gen85 <- ( commited_376_st2 ( positive 0 ) )"))

([rule_376_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st2-defeasibly-gen462)
   (depends-on declare commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st2] ) ) ) ?gen92 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen87 & : ( not ( member$ rule_376_st2 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) commited_376_st2 ) ) => ?gen85 <- ( commited_376_st2 ( positive 1 ) ( positive-derivator rule_376_st2 ?gen92 ) )"))

([rule_376_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st2-overruled-dot-gen464)
   (depends-on declare commited_376_st2 commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st2] ) ) ) ?gen85 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( subseq-pos ( create$ rule_376_st2-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( test ( eq ( class ?gen85 ) commited_376_st2 ) ) ( not ( and ?gen92 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( commited_376_st2 ( positive-defeated $?gen87 & : ( not ( member$ rule_376_st2 $?gen87 ) ) ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen89 ( create$ rule_376_st2-overruled $?gen88 ) ) ) ) ?gen85 <- ( commited_376_st2 ( negative-overruled $?gen90 ) )"))

([rule_376_st2-overruled] of derived-attribute-rule
   (pos-name rule_376_st2-overruled-gen466)
   (depends-on declare commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st2] ) ) ) ?gen92 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive ?gen91 & : ( >= ?gen91 1 ) ) ) ?gen85 <- ( commited_376_st2 ( defendant ?Defendant ) ( negative-support $?gen88 ) ( negative-overruled $?gen89 & : ( not ( subseq-pos ( create$ rule_376_st2-overruled $?gen88 $$$ $?gen89 ) ) ) ) ( positive-defeated $?gen87 & : ( not ( member$ rule_376_st2 $?gen87 ) ) ) ) ( test ( eq ( class ?gen85 ) commited_376_st2 ) ) => ( calc ( bind $?gen90 ( create$ rule_376_st2-overruled $?gen88 $?gen89 ) ) ) ?gen85 <- ( commited_376_st2 ( negative-overruled $?gen90 ) )"))

([rule_376_st2-support] of derived-attribute-rule
   (pos-name rule_376_st2-support-gen468)
   (depends-on declare commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st2] ) ) ) ?gen84 <- ( commited_376_st1 ( defendant ?Defendant ) ) ?gen85 <- ( commited_376_st2 ( defendant ?Defendant ) ( positive-support $?gen87 & : ( not ( subseq-pos ( create$ rule_376_st2 ?gen84 $$$ $?gen87 ) ) ) ) ) ( test ( eq ( class ?gen85 ) commited_376_st2 ) ) => ( calc ( bind $?gen90 ( create$ rule_376_st2 ?gen84 $?gen87 ) ) ) ?gen85 <- ( commited_376_st2 ( positive-support $?gen90 ) )"))

([rule_376_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-dot-gen470)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_376_st1] ) ) ) ?gen74 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_376_st1 $? ) ) ( test ( eq ( class ?gen74 ) commited_376_st1 ) ) ( not ( and ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( commited_376_st1 ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule_376_st1 $?gen76 ) ) ) ) ) ) => ?gen74 <- ( commited_376_st1 ( positive 0 ) )"))

([rule_376_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_376_st1-defeasibly-gen472)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_376_st1] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule_376_st1 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) commited_376_st1 ) ) => ?gen74 <- ( commited_376_st1 ( positive 1 ) ( positive-derivator rule_376_st1 ?gen81 ?gen83 ) )"))

([rule_376_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-dot-gen474)
   (depends-on declare commited_376_st1 lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_376_st1] ) ) ) ?gen74 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( subseq-pos ( create$ rule_376_st1-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( test ( eq ( class ?gen74 ) commited_376_st1 ) ) ( not ( and ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( commited_376_st1 ( positive-defeated $?gen76 & : ( not ( member$ rule_376_st1 $?gen76 ) ) ) ) ) ) => ( calc ( bind $?gen79 ( delete-member$ $?gen78 ( create$ rule_376_st1-overruled $?gen77 ) ) ) ) ?gen74 <- ( commited_376_st1 ( negative-overruled $?gen79 ) )"))

([rule_376_st1-overruled] of derived-attribute-rule
   (pos-name rule_376_st1-overruled-gen476)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_376_st1] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( commited_376_st1 ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( not ( subseq-pos ( create$ rule_376_st1-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( positive-defeated $?gen76 & : ( not ( member$ rule_376_st1 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) commited_376_st1 ) ) => ( calc ( bind $?gen79 ( create$ rule_376_st1-overruled $?gen77 $?gen78 ) ) ) ?gen74 <- ( commited_376_st1 ( negative-overruled $?gen79 ) )"))

([rule_376_st1-support] of derived-attribute-rule
   (pos-name rule_376_st1-support-gen478)
   (depends-on declare lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_376_st1] ) ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen73 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ?gen74 <- ( commited_376_st1 ( defendant ?Defendant ) ( positive-support $?gen76 & : ( not ( subseq-pos ( create$ rule_376_st1 ?gen72 ?gen73 $$$ $?gen76 ) ) ) ) ) ( test ( eq ( class ?gen74 ) commited_376_st1 ) ) => ( calc ( bind $?gen79 ( create$ rule_376_st1 ?gen72 ?gen73 $?gen76 ) ) ) ?gen74 <- ( commited_376_st1 ( positive-support $?gen79 ) )"))

([rule_152_st3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-dot-gen480)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st3] ) ) ) ?gen62 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st3 $? ) ) ( test ( eq ( class ?gen62 ) commited_152_st3 ) ) ( not ( and ?gen69 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen62 <- ( commited_152_st3 ( negative ~ 2 ) ( positive-overruled $?gen64 & : ( not ( member$ rule_152_st3 $?gen64 ) ) ) ) ) ) => ?gen62 <- ( commited_152_st3 ( positive 0 ) )"))

([rule_152_st3-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st3-defeasibly-gen482)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st3] ) ) ) ?gen69 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen62 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen64 & : ( not ( member$ rule_152_st3 $?gen64 ) ) ) ) ( test ( eq ( class ?gen62 ) commited_152_st3 ) ) => ?gen62 <- ( commited_152_st3 ( positive 1 ) ( positive-derivator rule_152_st3 ?gen69 ?gen71 ) )"))

([rule_152_st3-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-dot-gen484)
   (depends-on declare commited_152_st3 commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st3] ) ) ) ?gen62 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen65 ) ( negative-overruled $?gen66 & : ( subseq-pos ( create$ rule_152_st3-overruled $?gen65 $$$ $?gen66 ) ) ) ) ( test ( eq ( class ?gen62 ) commited_152_st3 ) ) ( not ( and ?gen69 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen62 <- ( commited_152_st3 ( positive-defeated $?gen64 & : ( not ( member$ rule_152_st3 $?gen64 ) ) ) ) ) ) => ( calc ( bind $?gen67 ( delete-member$ $?gen66 ( create$ rule_152_st3-overruled $?gen65 ) ) ) ) ?gen62 <- ( commited_152_st3 ( negative-overruled $?gen67 ) )"))

([rule_152_st3-overruled] of derived-attribute-rule
   (pos-name rule_152_st3-overruled-gen486)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st3] ) ) ) ?gen69 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive ?gen68 & : ( >= ?gen68 1 ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen62 <- ( commited_152_st3 ( defendant ?Defendant ) ( negative-support $?gen65 ) ( negative-overruled $?gen66 & : ( not ( subseq-pos ( create$ rule_152_st3-overruled $?gen65 $$$ $?gen66 ) ) ) ) ( positive-defeated $?gen64 & : ( not ( member$ rule_152_st3 $?gen64 ) ) ) ) ( test ( eq ( class ?gen62 ) commited_152_st3 ) ) => ( calc ( bind $?gen67 ( create$ rule_152_st3-overruled $?gen65 $?gen66 ) ) ) ?gen62 <- ( commited_152_st3 ( negative-overruled $?gen67 ) )"))

([rule_152_st3-support] of derived-attribute-rule
   (pos-name rule_152_st3-support-gen488)
   (depends-on declare commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st3] ) ) ) ?gen60 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen61 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ?gen62 <- ( commited_152_st3 ( defendant ?Defendant ) ( positive-support $?gen64 & : ( not ( subseq-pos ( create$ rule_152_st3 ?gen60 ?gen61 $$$ $?gen64 ) ) ) ) ) ( test ( eq ( class ?gen62 ) commited_152_st3 ) ) => ( calc ( bind $?gen67 ( create$ rule_152_st3 ?gen60 ?gen61 $?gen64 ) ) ) ?gen62 <- ( commited_152_st3 ( positive-support $?gen67 ) )"))

([rule_152_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-dot-gen490)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st2] ) ) ) ?gen50 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st2 $? ) ) ( test ( eq ( class ?gen50 ) commited_152_st2 ) ) ( not ( and ?gen57 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_152_st2 ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule_152_st2 $?gen52 ) ) ) ) ) ) => ?gen50 <- ( commited_152_st2 ( positive 0 ) )"))

([rule_152_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st2-defeasibly-gen492)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st2] ) ) ) ?gen57 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen52 & : ( not ( member$ rule_152_st2 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_152_st2 ) ) => ?gen50 <- ( commited_152_st2 ( positive 1 ) ( positive-derivator rule_152_st2 ?gen57 ?gen59 ) )"))

([rule_152_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-dot-gen494)
   (depends-on declare commited_152_st2 commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st2] ) ) ) ?gen50 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( subseq-pos ( create$ rule_152_st2-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_152_st2 ) ) ( not ( and ?gen57 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_152_st2 ( positive-defeated $?gen52 & : ( not ( member$ rule_152_st2 $?gen52 ) ) ) ) ) ) => ( calc ( bind $?gen55 ( delete-member$ $?gen54 ( create$ rule_152_st2-overruled $?gen53 ) ) ) ) ?gen50 <- ( commited_152_st2 ( negative-overruled $?gen55 ) )"))

([rule_152_st2-overruled] of derived-attribute-rule
   (pos-name rule_152_st2-overruled-gen496)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st2] ) ) ) ?gen57 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive ?gen56 & : ( >= ?gen56 1 ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen50 <- ( commited_152_st2 ( defendant ?Defendant ) ( negative-support $?gen53 ) ( negative-overruled $?gen54 & : ( not ( subseq-pos ( create$ rule_152_st2-overruled $?gen53 $$$ $?gen54 ) ) ) ) ( positive-defeated $?gen52 & : ( not ( member$ rule_152_st2 $?gen52 ) ) ) ) ( test ( eq ( class ?gen50 ) commited_152_st2 ) ) => ( calc ( bind $?gen55 ( create$ rule_152_st2-overruled $?gen53 $?gen54 ) ) ) ?gen50 <- ( commited_152_st2 ( negative-overruled $?gen55 ) )"))

([rule_152_st2-support] of derived-attribute-rule
   (pos-name rule_152_st2-support-gen498)
   (depends-on declare commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st2] ) ) ) ?gen48 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ?gen50 <- ( commited_152_st2 ( defendant ?Defendant ) ( positive-support $?gen52 & : ( not ( subseq-pos ( create$ rule_152_st2 ?gen48 ?gen49 $$$ $?gen52 ) ) ) ) ) ( test ( eq ( class ?gen50 ) commited_152_st2 ) ) => ( calc ( bind $?gen55 ( create$ rule_152_st2 ?gen48 ?gen49 $?gen52 ) ) ) ?gen50 <- ( commited_152_st2 ( positive-support $?gen55 ) )"))

([rule_152_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-dot-gen500)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_152_st1] ) ) ) ?gen38 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_152_st1 $? ) ) ( test ( eq ( class ?gen38 ) commited_152_st1 ) ) ( not ( and ?gen45 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen44 & : ( >= ?gen44 1 ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen38 <- ( commited_152_st1 ( negative ~ 2 ) ( positive-overruled $?gen40 & : ( not ( member$ rule_152_st1 $?gen40 ) ) ) ) ) ) => ?gen38 <- ( commited_152_st1 ( positive 0 ) )"))

([rule_152_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_152_st1-defeasibly-gen502)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_152_st1] ) ) ) ?gen45 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen44 & : ( >= ?gen44 1 ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen38 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen40 & : ( not ( member$ rule_152_st1 $?gen40 ) ) ) ) ( test ( eq ( class ?gen38 ) commited_152_st1 ) ) => ?gen38 <- ( commited_152_st1 ( positive 1 ) ( positive-derivator rule_152_st1 ?gen45 ?gen47 ) )"))

([rule_152_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-dot-gen504)
   (depends-on declare commited_152_st1 lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_152_st1] ) ) ) ?gen38 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen41 ) ( negative-overruled $?gen42 & : ( subseq-pos ( create$ rule_152_st1-overruled $?gen41 $$$ $?gen42 ) ) ) ) ( test ( eq ( class ?gen38 ) commited_152_st1 ) ) ( not ( and ?gen45 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen44 & : ( >= ?gen44 1 ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen38 <- ( commited_152_st1 ( positive-defeated $?gen40 & : ( not ( member$ rule_152_st1 $?gen40 ) ) ) ) ) ) => ( calc ( bind $?gen43 ( delete-member$ $?gen42 ( create$ rule_152_st1-overruled $?gen41 ) ) ) ) ?gen38 <- ( commited_152_st1 ( negative-overruled $?gen43 ) )"))

([rule_152_st1-overruled] of derived-attribute-rule
   (pos-name rule_152_st1-overruled-gen506)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_152_st1] ) ) ) ?gen45 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen44 & : ( >= ?gen44 1 ) ) ) ?gen47 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ( positive ?gen46 & : ( >= ?gen46 1 ) ) ) ?gen38 <- ( commited_152_st1 ( defendant ?Defendant ) ( negative-support $?gen41 ) ( negative-overruled $?gen42 & : ( not ( subseq-pos ( create$ rule_152_st1-overruled $?gen41 $$$ $?gen42 ) ) ) ) ( positive-defeated $?gen40 & : ( not ( member$ rule_152_st1 $?gen40 ) ) ) ) ( test ( eq ( class ?gen38 ) commited_152_st1 ) ) => ( calc ( bind $?gen43 ( create$ rule_152_st1-overruled $?gen41 $?gen42 ) ) ) ?gen38 <- ( commited_152_st1 ( negative-overruled $?gen43 ) )"))

([rule_152_st1-support] of derived-attribute-rule
   (pos-name rule_152_st1-support-gen508)
   (depends-on declare lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_152_st1] ) ) ) ?gen36 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ?gen38 <- ( commited_152_st1 ( defendant ?Defendant ) ( positive-support $?gen40 & : ( not ( subseq-pos ( create$ rule_152_st1 ?gen36 ?gen37 $$$ $?gen40 ) ) ) ) ) ( test ( eq ( class ?gen38 ) commited_152_st1 ) ) => ( calc ( bind $?gen43 ( create$ rule_152_st1 ?gen36 ?gen37 $?gen40 ) ) ) ?gen38 <- ( commited_152_st1 ( positive-support $?gen43 ) )"))

([rule_151_st2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st2-defeasibly-dot-gen510)
   (depends-on declare commited_151_st2 commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st2] ) ) ) ?gen28 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st2 $? ) ) ( test ( eq ( class ?gen28 ) commited_151_st2 ) ) ( not ( and ?gen35 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen28 <- ( commited_151_st2 ( negative ~ 2 ) ( positive-overruled $?gen30 & : ( not ( member$ rule_151_st2 $?gen30 ) ) ) ) ) ) => ?gen28 <- ( commited_151_st2 ( positive 0 ) )"))

([rule_151_st2-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st2-defeasibly-gen512)
   (depends-on declare commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st2] ) ) ) ?gen35 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen28 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen30 & : ( not ( member$ rule_151_st2 $?gen30 ) ) ) ) ( test ( eq ( class ?gen28 ) commited_151_st2 ) ) => ?gen28 <- ( commited_151_st2 ( positive 1 ) ( positive-derivator rule_151_st2 ?gen35 ) )"))

([rule_151_st2-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st2-overruled-dot-gen514)
   (depends-on declare commited_151_st2 commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st2] ) ) ) ?gen28 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen31 ) ( negative-overruled $?gen32 & : ( subseq-pos ( create$ rule_151_st2-overruled $?gen31 $$$ $?gen32 ) ) ) ) ( test ( eq ( class ?gen28 ) commited_151_st2 ) ) ( not ( and ?gen35 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen28 <- ( commited_151_st2 ( positive-defeated $?gen30 & : ( not ( member$ rule_151_st2 $?gen30 ) ) ) ) ) ) => ( calc ( bind $?gen33 ( delete-member$ $?gen32 ( create$ rule_151_st2-overruled $?gen31 ) ) ) ) ?gen28 <- ( commited_151_st2 ( negative-overruled $?gen33 ) )"))

([rule_151_st2-overruled] of derived-attribute-rule
   (pos-name rule_151_st2-overruled-gen516)
   (depends-on declare commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st2] ) ) ) ?gen35 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen28 <- ( commited_151_st2 ( defendant ?Defendant ) ( negative-support $?gen31 ) ( negative-overruled $?gen32 & : ( not ( subseq-pos ( create$ rule_151_st2-overruled $?gen31 $$$ $?gen32 ) ) ) ) ( positive-defeated $?gen30 & : ( not ( member$ rule_151_st2 $?gen30 ) ) ) ) ( test ( eq ( class ?gen28 ) commited_151_st2 ) ) => ( calc ( bind $?gen33 ( create$ rule_151_st2-overruled $?gen31 $?gen32 ) ) ) ?gen28 <- ( commited_151_st2 ( negative-overruled $?gen33 ) )"))

([rule_151_st2-support] of derived-attribute-rule
   (pos-name rule_151_st2-support-gen518)
   (depends-on declare commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st2] ) ) ) ?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ?gen28 <- ( commited_151_st2 ( defendant ?Defendant ) ( positive-support $?gen30 & : ( not ( subseq-pos ( create$ rule_151_st2 ?gen27 $$$ $?gen30 ) ) ) ) ) ( test ( eq ( class ?gen28 ) commited_151_st2 ) ) => ( calc ( bind $?gen33 ( create$ rule_151_st2 ?gen27 $?gen30 ) ) ) ?gen28 <- ( commited_151_st2 ( positive-support $?gen33 ) )"))

([rule_151_st1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-dot-gen520)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule_151_st1 $? ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( commited_151_st1 ( positive 0 ) )"))

([rule_151_st1-defeasibly] of derived-attribute-rule
   (pos-name rule_151_st1-defeasibly-gen522)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ?gen17 <- ( commited_151_st1 ( positive 1 ) ( positive-derivator rule_151_st1 ?gen24 ?gen26 ) )"))

([rule_151_st1-overruled-dot] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-dot-gen524)
   (depends-on declare commited_151_st1 lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule_151_st1] ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) ( not ( and ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule_151_st1-overruled $?gen20 ) ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-overruled] of derived-attribute-rule
   (pos-name rule_151_st1-overruled-gen526)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule_151_st1] ) ) ) ?gen24 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule_151_st1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule_151_st1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( commited_151_st1 ( negative-overruled $?gen22 ) )"))

([rule_151_st1-support] of derived-attribute-rule
   (pos-name rule_151_st1-support-gen528)
   (depends-on declare lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule_151_st1] ) ) ) ?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ?gen17 <- ( commited_151_st1 ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule_151_st1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) commited_151_st1 ) ) => ( calc ( bind $?gen22 ( create$ rule_151_st1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( commited_151_st1 ( positive-support $?gen22 ) )"))

([kazna_cl_376_st3_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_max-deductive-gen279)
   (depends-on commited_376_st3 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen246 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st3_max-deductive-gen279 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st3_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st3_min-deductive-gen278)
   (depends-on commited_376_st3 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen237 <- ( commited_376_st3 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 6 ) ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_376_st3_min-deductive-gen278 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_max-deductive-gen277)
   (depends-on commited_376_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen228 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_376_st2_max-deductive-gen277 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st2_min-deductive-gen276)
   (depends-on commited_376_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen219 <- ( commited_376_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 3 ) ) ) => ( kazna_zatvora_min ( value 3 ) )")
   (production-rule "( defrule kazna_cl_376_st2_min-deductive-gen276 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 3 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 3 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_376_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_max-deductive-gen275)
   (depends-on commited_376_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen210 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 36 ) ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_376_st1_max-deductive-gen275 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_376_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_376_st1_min-deductive-gen274)
   (depends-on commited_376_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen201 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_376_st1_min-deductive-gen274 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen201 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_152_st3-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st3-deductive-gen273)
   (depends-on commited_152_st3 sudska_opomena)
   (implies sudska_opomena)
   (deductive-rule "?gen192 <- ( commited_152_st3 ( defendant ?Defendant ) ) ( not ( sudska_opomena ( value 1 ) ) ) => ( sudska_opomena ( value 1 ) )")
   (production-rule "( defrule kazna_cl_152_st3-deductive-gen273 ( declare ( salience ( calc-salience sudska_opomena ) ) ) ( run-deductive-rules ) ( object ( name ?gen192 ) ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a sudska_opomena ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat sudska_opomena 1 ) ) ) ( make-instance ?oid of sudska_opomena ( value 1 ) ) )")
   (derived-class sudska_opomena))

([kazna_cl_152_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_max-deductive-gen272)
   (depends-on commited_152_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen183 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 36 ) ) ) => ( kazna_zatvora_max ( value 36 ) )")
   (production-rule "( defrule kazna_cl_152_st2_max-deductive-gen272 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen183 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 36 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 36 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_152_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st2_min-deductive-gen271)
   (depends-on commited_152_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen174 <- ( commited_152_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st2_min-deductive-gen271 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_152_st1_max_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max_novcana-deductive-gen270)
   (depends-on commited_152_st1 novcana_kazna_152_st1_max)
   (implies novcana_kazna_152_st1_max)
   (deductive-rule "?gen165 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_max ( value 8000 ) ) ) => ( novcana_kazna_152_st1_max ( value 8000 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max_novcana-deductive-gen270 ( declare ( salience ( calc-salience novcana_kazna_152_st1_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_max ) ( value 8000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_max 8000 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_max ( value 8000 ) ) )")
   (derived-class novcana_kazna_152_st1_max))

([kazna_cl_152_st1_min_novcana-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min_novcana-deductive-gen269)
   (depends-on commited_152_st1 novcana_kazna_152_st1_min)
   (implies novcana_kazna_152_st1_min)
   (deductive-rule "?gen156 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( novcana_kazna_152_st1_min ( value 600 ) ) ) => ( novcana_kazna_152_st1_min ( value 600 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min_novcana-deductive-gen269 ( declare ( salience ( calc-salience novcana_kazna_152_st1_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen156 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a novcana_kazna_152_st1_min ) ( value 600 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat novcana_kazna_152_st1_min 600 ) ) ) ( make-instance ?oid of novcana_kazna_152_st1_min ( value 600 ) ) )")
   (derived-class novcana_kazna_152_st1_min))

([kazna_cl_152_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_max-deductive-gen268)
   (depends-on commited_152_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen147 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 12 ) ) ) => ( kazna_zatvora_max ( value 12 ) )")
   (production-rule "( defrule kazna_cl_152_st1_max-deductive-gen268 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen147 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 12 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 12 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_152_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_152_st1_min-deductive-gen267)
   (depends-on commited_152_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen138 <- ( commited_152_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 0 ) ) ) => ( kazna_zatvora_min ( value 0 ) )")
   (production-rule "( defrule kazna_cl_152_st1_min-deductive-gen267 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen138 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 0 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 0 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_151_st2_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_max-deductive-gen266)
   (depends-on commited_151_st2 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen129 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 96 ) ) ) => ( kazna_zatvora_max ( value 96 ) )")
   (production-rule "( defrule kazna_cl_151_st2_max-deductive-gen266 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 96 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 96 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 96 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 96 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_151_st2_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st2_min-deductive-gen265)
   (depends-on commited_151_st2 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen120 <- ( commited_151_st2 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 12 ) ) ) => ( kazna_zatvora_min ( value 12 ) )")
   (production-rule "( defrule kazna_cl_151_st2_min-deductive-gen265 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 12 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 12 ) ) )")
   (derived-class kazna_zatvora_min))

([kazna_cl_151_st1_max-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_max-deductive-gen264)
   (depends-on commited_151_st1 kazna_zatvora_max)
   (implies kazna_zatvora_max)
   (deductive-rule "?gen111 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_max ( value 60 ) ) ) => ( kazna_zatvora_max ( value 60 ) )")
   (production-rule "( defrule kazna_cl_151_st1_max-deductive-gen264 ( declare ( salience ( calc-salience kazna_zatvora_max ) ) ) ( run-deductive-rules ) ( object ( name ?gen111 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_max ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_max 60 ) ) ) ( make-instance ?oid of kazna_zatvora_max ( value 60 ) ) )")
   (derived-class kazna_zatvora_max))

([kazna_cl_151_st1_min-deductive] of ntm-deductive-rule
   (pos-name kazna_cl_151_st1_min-deductive-gen263)
   (depends-on commited_151_st1 kazna_zatvora_min)
   (implies kazna_zatvora_min)
   (deductive-rule "?gen102 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( kazna_zatvora_min ( value 6 ) ) ) => ( kazna_zatvora_min ( value 6 ) )")
   (production-rule "( defrule kazna_cl_151_st1_min-deductive-gen263 ( declare ( salience ( calc-salience kazna_zatvora_min ) ) ) ( run-deductive-rules ) ( object ( name ?gen102 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a kazna_zatvora_min ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat kazna_zatvora_min 6 ) ) ) ( make-instance ?oid of kazna_zatvora_min ( value 6 ) ) )")
   (derived-class kazna_zatvora_min))

([rule_376_st3-deductive] of ntm-deductive-rule
   (pos-name rule_376_st3-deductive-gen262)
   (depends-on lc:case commited_376_st3)
   (implies commited_376_st3)
   (deductive-rule "?gen93 <- ( lc:case ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( commited_376_st3 ( defendant ?Defendant ) ) ) => ( commited_376_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st3-deductive-gen262 ( declare ( salience ( calc-salience commited_376_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen93 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:defendant ?Defendant ) ( lc:is_entity \"special_legal_entity\" ) ) ( not ( object ( is-a commited_376_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st3))

([rule_376_st2-deductive] of ntm-deductive-rule
   (pos-name rule_376_st2-deductive-gen261)
   (depends-on commited_376_st1 commited_376_st2)
   (implies commited_376_st2)
   (deductive-rule "?gen84 <- ( commited_376_st1 ( defendant ?Defendant ) ) ( not ( commited_376_st2 ( defendant ?Defendant ) ) ) => ( commited_376_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st2-deductive-gen261 ( declare ( salience ( calc-salience commited_376_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a commited_376_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st2))

([rule_376_st1-deductive] of ntm-deductive-rule
   (pos-name rule_376_st1-deductive-gen260)
   (depends-on lc:case lc:case commited_376_st1)
   (implies commited_376_st1)
   (deductive-rule "?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ?gen73 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( not ( commited_376_st1 ( defendant ?Defendant ) ) ) => ( commited_376_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_376_st1-deductive-gen260 ( declare ( salience ( calc-salience commited_376_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:napad_ili_pretnja \"yes\" ) ) ( object ( name ?gen73 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"legal_entity\" ) ) ( not ( object ( is-a commited_376_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_376_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_376_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_376_st1))

([rule_152_st3-deductive] of ntm-deductive-rule
   (pos-name rule_152_st3-deductive-gen259)
   (depends-on commited_152_st2 lc:case commited_152_st3)
   (implies commited_152_st3)
   (deductive-rule "?gen60 <- ( commited_152_st2 ( defendant ?Defendant ) ) ?gen61 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( commited_152_st3 ( defendant ?Defendant ) ) ) => ( commited_152_st3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st3-deductive-gen259 ( declare ( salience ( calc-salience commited_152_st3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ( object ( name ?gen61 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:provokacija \"yes\" ) ) ( not ( object ( is-a commited_152_st3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st3 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st3 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st3))

([rule_152_st2-deductive] of ntm-deductive-rule
   (pos-name rule_152_st2-deductive-gen258)
   (depends-on commited_152_st1 lc:case commited_152_st2)
   (implies commited_152_st2)
   (deductive-rule "?gen48 <- ( commited_152_st1 ( defendant ?Defendant ) ) ?gen49 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( commited_152_st2 ( defendant ?Defendant ) ) ) => ( commited_152_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st2-deductive-gen258 ( declare ( salience ( calc-salience commited_152_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen48 ) ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ( object ( name ?gen49 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:korisceno_oruzje \"yes\" ) ) ( not ( object ( is-a commited_152_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st2))

([rule_152_st1-deductive] of ntm-deductive-rule
   (pos-name rule_152_st1-deductive-gen257)
   (depends-on lc:case lc:case commited_152_st1)
   (implies commited_152_st1)
   (deductive-rule "?gen36 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( commited_152_st1 ( defendant ?Defendant ) ) ) => ( commited_152_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_152_st1-deductive-gen257 ( declare ( salience ( calc-salience commited_152_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen36 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen37 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:laka_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_152_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_152_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_152_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_152_st1))

([rule_151_st2-deductive] of ntm-deductive-rule
   (pos-name rule_151_st2-deductive-gen256)
   (depends-on commited_151_st1 commited_151_st2)
   (implies commited_151_st2)
   (deductive-rule "?gen27 <- ( commited_151_st1 ( defendant ?Defendant ) ) ( not ( commited_151_st2 ( defendant ?Defendant ) ) ) => ( commited_151_st2 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st2-deductive-gen256 ( declare ( salience ( calc-salience commited_151_st2 ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a commited_151_st2 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st2 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st2 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st2))

([rule_151_st1-deductive] of ntm-deductive-rule
   (pos-name rule_151_st1-deductive-gen255)
   (depends-on lc:case lc:case commited_151_st1)
   (implies commited_151_st1)
   (deductive-rule "?gen15 <- ( lc:case ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( commited_151_st1 ( defendant ?Defendant ) ) ) => ( commited_151_st1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule_151_st1-deductive-gen255 ( declare ( salience ( calc-salience commited_151_st1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:victim ?Victim ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:teska_telesna_povreda \"yes\" ) ) ( not ( object ( is-a commited_151_st1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat commited_151_st1 ?Defendant ) ) ) ( make-instance ?oid of commited_151_st1 ( defendant ?Defendant ) ) )")
   (derived-class commited_151_st1))

