; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3123 () Bool)

(assert start!3123)

(declare-fun b_free!35 () Bool)

(declare-fun b_next!35 () Bool)

(assert (=> start!3123 (= b_free!35 (not b_next!35))))

(declare-fun tp!53 () Bool)

(declare-fun b_and!237 () Bool)

(assert (=> start!3123 (= tp!53 b_and!237)))

(declare-fun b!17535 () Bool)

(declare-fun res!13970 () Bool)

(declare-fun e!9400 () Bool)

(assert (=> b!17535 (=> (not res!13970) (not e!9400))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1384 0))(
  ( (array!1385 (arr!604 (Array (_ BitVec 32) (_ BitVec 32))) (size!604 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1384)

(declare-fun dynLambda!60 (Int (_ BitVec 32)) Bool)

(assert (=> b!17535 (= res!13970 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17536 () Bool)

(declare-fun res!13975 () Bool)

(assert (=> b!17536 (=> (not res!13975) (not e!9400))))

(assert (=> b!17536 (= res!13975 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17537 () Bool)

(declare-fun res!13976 () Bool)

(assert (=> b!17537 (=> (not res!13976) (not e!9400))))

(assert (=> b!17537 (= res!13976 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17538 () Bool)

(declare-fun res!13969 () Bool)

(assert (=> b!17538 (=> (not res!13969) (not e!9400))))

(assert (=> b!17538 (= res!13969 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17540 () Bool)

(declare-fun res!13963 () Bool)

(assert (=> b!17540 (=> (not res!13963) (not e!9400))))

(assert (=> b!17540 (= res!13963 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001011)))))

(declare-fun b!17541 () Bool)

(declare-fun res!13972 () Bool)

(assert (=> b!17541 (=> (not res!13972) (not e!9400))))

(assert (=> b!17541 (= res!13972 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17542 () Bool)

(declare-fun res!13977 () Bool)

(assert (=> b!17542 (=> (not res!13977) (not e!9400))))

(assert (=> b!17542 (= res!13977 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001101)))))

(declare-fun b!17543 () Bool)

(declare-fun res!13966 () Bool)

(assert (=> b!17543 (=> (not res!13966) (not e!9400))))

(assert (=> b!17543 (= res!13966 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17544 () Bool)

(assert (=> b!17544 (= e!9400 (bvsge #b00000000000000000000000000001110 (size!604 a!13)))))

(declare-fun b!17545 () Bool)

(declare-fun res!13973 () Bool)

(assert (=> b!17545 (=> (not res!13973) (not e!9400))))

(assert (=> b!17545 (= res!13973 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17546 () Bool)

(declare-fun res!13968 () Bool)

(assert (=> b!17546 (=> (not res!13968) (not e!9400))))

(assert (=> b!17546 (= res!13968 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17547 () Bool)

(declare-fun res!13971 () Bool)

(assert (=> b!17547 (=> (not res!13971) (not e!9400))))

(assert (=> b!17547 (= res!13971 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000001100)))))

(declare-fun b!17548 () Bool)

(declare-fun res!13967 () Bool)

(assert (=> b!17548 (=> (not res!13967) (not e!9400))))

(assert (=> b!17548 (= res!13967 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17549 () Bool)

(declare-fun res!13964 () Bool)

(assert (=> b!17549 (=> (not res!13964) (not e!9400))))

(assert (=> b!17549 (= res!13964 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17539 () Bool)

(declare-fun res!13965 () Bool)

(assert (=> b!17539 (=> (not res!13965) (not e!9400))))

(assert (=> b!17539 (= res!13965 (dynLambda!60 P!6 (select (arr!604 a!13) #b00000000000000000000000000000101)))))

(declare-fun res!13974 () Bool)

(assert (=> start!3123 (=> (not res!13974) (not e!9400))))

(assert (=> start!3123 (= res!13974 (= (size!604 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3123 e!9400))

(declare-fun array_inv!552 (array!1384) Bool)

(assert (=> start!3123 (array_inv!552 a!13)))

(assert (=> start!3123 tp!53))

(assert (= (and start!3123 res!13974) b!17546))

(assert (= (and b!17546 res!13968) b!17549))

(assert (= (and b!17549 res!13964) b!17538))

(assert (= (and b!17538 res!13969) b!17537))

(assert (= (and b!17537 res!13976) b!17541))

(assert (= (and b!17541 res!13972) b!17539))

(assert (= (and b!17539 res!13965) b!17548))

(assert (= (and b!17548 res!13967) b!17545))

(assert (= (and b!17545 res!13973) b!17543))

(assert (= (and b!17543 res!13966) b!17536))

(assert (= (and b!17536 res!13975) b!17535))

(assert (= (and b!17535 res!13970) b!17540))

(assert (= (and b!17540 res!13963) b!17547))

(assert (= (and b!17547 res!13971) b!17542))

(assert (= (and b!17542 res!13977) b!17544))

(declare-fun b_lambda!8143 () Bool)

(assert (=> (not b_lambda!8143) (not b!17541)))

(declare-fun t!393 () Bool)

(declare-fun tb!203 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!393) tb!203))

(declare-fun result!203 () Bool)

(assert (=> tb!203 (= result!203 true)))

(assert (=> b!17541 t!393))

(declare-fun b_and!239 () Bool)

(assert (= b_and!237 (and (=> t!393 result!203) b_and!239)))

(declare-fun b_lambda!8145 () Bool)

(assert (=> (not b_lambda!8145) (not b!17548)))

(declare-fun t!395 () Bool)

(declare-fun tb!205 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!395) tb!205))

(declare-fun result!205 () Bool)

(assert (=> tb!205 (= result!205 true)))

(assert (=> b!17548 t!395))

(declare-fun b_and!241 () Bool)

(assert (= b_and!239 (and (=> t!395 result!205) b_and!241)))

(declare-fun b_lambda!8147 () Bool)

(assert (=> (not b_lambda!8147) (not b!17537)))

(declare-fun t!397 () Bool)

(declare-fun tb!207 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!397) tb!207))

(declare-fun result!207 () Bool)

(assert (=> tb!207 (= result!207 true)))

(assert (=> b!17537 t!397))

(declare-fun b_and!243 () Bool)

(assert (= b_and!241 (and (=> t!397 result!207) b_and!243)))

(declare-fun b_lambda!8149 () Bool)

(assert (=> (not b_lambda!8149) (not b!17542)))

(declare-fun t!399 () Bool)

(declare-fun tb!209 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!399) tb!209))

(declare-fun result!209 () Bool)

(assert (=> tb!209 (= result!209 true)))

(assert (=> b!17542 t!399))

(declare-fun b_and!245 () Bool)

(assert (= b_and!243 (and (=> t!399 result!209) b_and!245)))

(declare-fun b_lambda!8151 () Bool)

(assert (=> (not b_lambda!8151) (not b!17536)))

(declare-fun t!401 () Bool)

(declare-fun tb!211 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!401) tb!211))

(declare-fun result!211 () Bool)

(assert (=> tb!211 (= result!211 true)))

(assert (=> b!17536 t!401))

(declare-fun b_and!247 () Bool)

(assert (= b_and!245 (and (=> t!401 result!211) b_and!247)))

(declare-fun b_lambda!8153 () Bool)

(assert (=> (not b_lambda!8153) (not b!17540)))

(declare-fun t!403 () Bool)

(declare-fun tb!213 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!403) tb!213))

(declare-fun result!213 () Bool)

(assert (=> tb!213 (= result!213 true)))

(assert (=> b!17540 t!403))

(declare-fun b_and!249 () Bool)

(assert (= b_and!247 (and (=> t!403 result!213) b_and!249)))

(declare-fun b_lambda!8155 () Bool)

(assert (=> (not b_lambda!8155) (not b!17546)))

(declare-fun t!405 () Bool)

(declare-fun tb!215 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!405) tb!215))

(declare-fun result!215 () Bool)

(assert (=> tb!215 (= result!215 true)))

(assert (=> b!17546 t!405))

(declare-fun b_and!251 () Bool)

(assert (= b_and!249 (and (=> t!405 result!215) b_and!251)))

(declare-fun b_lambda!8157 () Bool)

(assert (=> (not b_lambda!8157) (not b!17535)))

(declare-fun t!407 () Bool)

(declare-fun tb!217 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!407) tb!217))

(declare-fun result!217 () Bool)

(assert (=> tb!217 (= result!217 true)))

(assert (=> b!17535 t!407))

(declare-fun b_and!253 () Bool)

(assert (= b_and!251 (and (=> t!407 result!217) b_and!253)))

(declare-fun b_lambda!8159 () Bool)

(assert (=> (not b_lambda!8159) (not b!17547)))

(declare-fun t!409 () Bool)

(declare-fun tb!219 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!409) tb!219))

(declare-fun result!219 () Bool)

(assert (=> tb!219 (= result!219 true)))

(assert (=> b!17547 t!409))

(declare-fun b_and!255 () Bool)

(assert (= b_and!253 (and (=> t!409 result!219) b_and!255)))

(declare-fun b_lambda!8161 () Bool)

(assert (=> (not b_lambda!8161) (not b!17545)))

(declare-fun t!411 () Bool)

(declare-fun tb!221 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!411) tb!221))

(declare-fun result!221 () Bool)

(assert (=> tb!221 (= result!221 true)))

(assert (=> b!17545 t!411))

(declare-fun b_and!257 () Bool)

(assert (= b_and!255 (and (=> t!411 result!221) b_and!257)))

(declare-fun b_lambda!8163 () Bool)

(assert (=> (not b_lambda!8163) (not b!17538)))

(declare-fun t!413 () Bool)

(declare-fun tb!223 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!413) tb!223))

(declare-fun result!223 () Bool)

(assert (=> tb!223 (= result!223 true)))

(assert (=> b!17538 t!413))

(declare-fun b_and!259 () Bool)

(assert (= b_and!257 (and (=> t!413 result!223) b_and!259)))

(declare-fun b_lambda!8165 () Bool)

(assert (=> (not b_lambda!8165) (not b!17539)))

(declare-fun t!415 () Bool)

(declare-fun tb!225 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!415) tb!225))

(declare-fun result!225 () Bool)

(assert (=> tb!225 (= result!225 true)))

(assert (=> b!17539 t!415))

(declare-fun b_and!261 () Bool)

(assert (= b_and!259 (and (=> t!415 result!225) b_and!261)))

(declare-fun b_lambda!8167 () Bool)

(assert (=> (not b_lambda!8167) (not b!17549)))

(declare-fun t!417 () Bool)

(declare-fun tb!227 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!417) tb!227))

(declare-fun result!227 () Bool)

(assert (=> tb!227 (= result!227 true)))

(assert (=> b!17549 t!417))

(declare-fun b_and!263 () Bool)

(assert (= b_and!261 (and (=> t!417 result!227) b_and!263)))

(declare-fun b_lambda!8169 () Bool)

(assert (=> (not b_lambda!8169) (not b!17543)))

(declare-fun t!419 () Bool)

(declare-fun tb!229 () Bool)

(assert (=> (and start!3123 (= P!6 P!6) t!419) tb!229))

(declare-fun result!229 () Bool)

(assert (=> tb!229 (= result!229 true)))

(assert (=> b!17543 t!419))

(declare-fun b_and!265 () Bool)

(assert (= b_and!263 (and (=> t!419 result!229) b_and!265)))

(declare-fun m!27765 () Bool)

(assert (=> b!17538 m!27765))

(assert (=> b!17538 m!27765))

(declare-fun m!27767 () Bool)

(assert (=> b!17538 m!27767))

(declare-fun m!27769 () Bool)

(assert (=> b!17545 m!27769))

(assert (=> b!17545 m!27769))

(declare-fun m!27771 () Bool)

(assert (=> b!17545 m!27771))

(declare-fun m!27773 () Bool)

(assert (=> b!17535 m!27773))

(assert (=> b!17535 m!27773))

(declare-fun m!27775 () Bool)

(assert (=> b!17535 m!27775))

(declare-fun m!27777 () Bool)

(assert (=> b!17540 m!27777))

(assert (=> b!17540 m!27777))

(declare-fun m!27779 () Bool)

(assert (=> b!17540 m!27779))

(declare-fun m!27781 () Bool)

(assert (=> b!17536 m!27781))

(assert (=> b!17536 m!27781))

(declare-fun m!27783 () Bool)

(assert (=> b!17536 m!27783))

(declare-fun m!27785 () Bool)

(assert (=> b!17547 m!27785))

(assert (=> b!17547 m!27785))

(declare-fun m!27787 () Bool)

(assert (=> b!17547 m!27787))

(declare-fun m!27789 () Bool)

(assert (=> b!17537 m!27789))

(assert (=> b!17537 m!27789))

(declare-fun m!27791 () Bool)

(assert (=> b!17537 m!27791))

(declare-fun m!27793 () Bool)

(assert (=> b!17539 m!27793))

(assert (=> b!17539 m!27793))

(declare-fun m!27795 () Bool)

(assert (=> b!17539 m!27795))

(declare-fun m!27797 () Bool)

(assert (=> start!3123 m!27797))

(declare-fun m!27799 () Bool)

(assert (=> b!17541 m!27799))

(assert (=> b!17541 m!27799))

(declare-fun m!27801 () Bool)

(assert (=> b!17541 m!27801))

(declare-fun m!27803 () Bool)

(assert (=> b!17542 m!27803))

(assert (=> b!17542 m!27803))

(declare-fun m!27805 () Bool)

(assert (=> b!17542 m!27805))

(declare-fun m!27807 () Bool)

(assert (=> b!17546 m!27807))

(assert (=> b!17546 m!27807))

(declare-fun m!27809 () Bool)

(assert (=> b!17546 m!27809))

(declare-fun m!27811 () Bool)

(assert (=> b!17549 m!27811))

(assert (=> b!17549 m!27811))

(declare-fun m!27813 () Bool)

(assert (=> b!17549 m!27813))

(declare-fun m!27815 () Bool)

(assert (=> b!17548 m!27815))

(assert (=> b!17548 m!27815))

(declare-fun m!27817 () Bool)

(assert (=> b!17548 m!27817))

(declare-fun m!27819 () Bool)

(assert (=> b!17543 m!27819))

(assert (=> b!17543 m!27819))

(declare-fun m!27821 () Bool)

(assert (=> b!17543 m!27821))

(push 1)

(assert (not b_lambda!8165))

(assert (not b_lambda!8163))

(assert (not b_lambda!8145))

(assert (not b_lambda!8147))

(assert (not b_lambda!8143))

(assert (not b_lambda!8157))

(assert b_and!265)

(assert (not b_lambda!8159))

(assert (not b_lambda!8151))

(assert (not b_lambda!8161))

(assert (not b_lambda!8169))

(assert (not b_lambda!8149))

(assert (not b_next!35))

(assert (not b_lambda!8153))

(assert (not start!3123))

(assert (not b_lambda!8167))

(assert (not b_lambda!8155))

(check-sat)

(pop 1)

(push 1)

(assert b_and!265)

(assert (not b_next!35))

(check-sat)

(pop 1)

