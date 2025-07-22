; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3119 () Bool)

(assert start!3119)

(declare-fun b_free!31 () Bool)

(declare-fun b_next!31 () Bool)

(assert (=> start!3119 (= b_free!31 (not b_next!31))))

(declare-fun tp!47 () Bool)

(declare-fun b_and!183 () Bool)

(assert (=> start!3119 (= tp!47 b_and!183)))

(declare-fun b!17450 () Bool)

(declare-fun e!9388 () Bool)

(declare-datatypes ((array!1380 0))(
  ( (array!1381 (arr!602 (Array (_ BitVec 32) (_ BitVec 32))) (size!602 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1380)

(assert (=> b!17450 (= e!9388 (bvsge #b00000000000000000000000000001100 (size!602 a!13)))))

(declare-fun b!17451 () Bool)

(declare-fun res!13882 () Bool)

(assert (=> b!17451 (=> (not res!13882) (not e!9388))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!58 (Int (_ BitVec 32)) Bool)

(assert (=> b!17451 (= res!13882 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17453 () Bool)

(declare-fun res!13878 () Bool)

(assert (=> b!17453 (=> (not res!13878) (not e!9388))))

(assert (=> b!17453 (= res!13878 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17454 () Bool)

(declare-fun res!13880 () Bool)

(assert (=> b!17454 (=> (not res!13880) (not e!9388))))

(assert (=> b!17454 (= res!13880 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17455 () Bool)

(declare-fun res!13890 () Bool)

(assert (=> b!17455 (=> (not res!13890) (not e!9388))))

(assert (=> b!17455 (= res!13890 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17456 () Bool)

(declare-fun res!13887 () Bool)

(assert (=> b!17456 (=> (not res!13887) (not e!9388))))

(assert (=> b!17456 (= res!13887 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17457 () Bool)

(declare-fun res!13885 () Bool)

(assert (=> b!17457 (=> (not res!13885) (not e!9388))))

(assert (=> b!17457 (= res!13885 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17458 () Bool)

(declare-fun res!13888 () Bool)

(assert (=> b!17458 (=> (not res!13888) (not e!9388))))

(assert (=> b!17458 (= res!13888 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17459 () Bool)

(declare-fun res!13881 () Bool)

(assert (=> b!17459 (=> (not res!13881) (not e!9388))))

(assert (=> b!17459 (= res!13881 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17460 () Bool)

(declare-fun res!13889 () Bool)

(assert (=> b!17460 (=> (not res!13889) (not e!9388))))

(assert (=> b!17460 (= res!13889 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000001011)))))

(declare-fun b!17452 () Bool)

(declare-fun res!13884 () Bool)

(assert (=> b!17452 (=> (not res!13884) (not e!9388))))

(assert (=> b!17452 (= res!13884 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000110)))))

(declare-fun res!13883 () Bool)

(assert (=> start!3119 (=> (not res!13883) (not e!9388))))

(assert (=> start!3119 (= res!13883 (= (size!602 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3119 e!9388))

(declare-fun array_inv!550 (array!1380) Bool)

(assert (=> start!3119 (array_inv!550 a!13)))

(assert (=> start!3119 tp!47))

(declare-fun b!17461 () Bool)

(declare-fun res!13886 () Bool)

(assert (=> b!17461 (=> (not res!13886) (not e!9388))))

(assert (=> b!17461 (= res!13886 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17462 () Bool)

(declare-fun res!13879 () Bool)

(assert (=> b!17462 (=> (not res!13879) (not e!9388))))

(assert (=> b!17462 (= res!13879 (dynLambda!58 P!6 (select (arr!602 a!13) #b00000000000000000000000000000010)))))

(assert (= (and start!3119 res!13883) b!17456))

(assert (= (and b!17456 res!13887) b!17459))

(assert (= (and b!17459 res!13881) b!17462))

(assert (= (and b!17462 res!13879) b!17461))

(assert (= (and b!17461 res!13886) b!17453))

(assert (= (and b!17453 res!13878) b!17458))

(assert (= (and b!17458 res!13888) b!17452))

(assert (= (and b!17452 res!13884) b!17457))

(assert (= (and b!17457 res!13885) b!17455))

(assert (= (and b!17455 res!13890) b!17454))

(assert (= (and b!17454 res!13880) b!17451))

(assert (= (and b!17451 res!13882) b!17460))

(assert (= (and b!17460 res!13889) b!17450))

(declare-fun b_lambda!8093 () Bool)

(assert (=> (not b_lambda!8093) (not b!17461)))

(declare-fun t!343 () Bool)

(declare-fun tb!153 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!343) tb!153))

(declare-fun result!153 () Bool)

(assert (=> tb!153 (= result!153 true)))

(assert (=> b!17461 t!343))

(declare-fun b_and!185 () Bool)

(assert (= b_and!183 (and (=> t!343 result!153) b_and!185)))

(declare-fun b_lambda!8095 () Bool)

(assert (=> (not b_lambda!8095) (not b!17451)))

(declare-fun t!345 () Bool)

(declare-fun tb!155 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!345) tb!155))

(declare-fun result!155 () Bool)

(assert (=> tb!155 (= result!155 true)))

(assert (=> b!17451 t!345))

(declare-fun b_and!187 () Bool)

(assert (= b_and!185 (and (=> t!345 result!155) b_and!187)))

(declare-fun b_lambda!8097 () Bool)

(assert (=> (not b_lambda!8097) (not b!17453)))

(declare-fun t!347 () Bool)

(declare-fun tb!157 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!347) tb!157))

(declare-fun result!157 () Bool)

(assert (=> tb!157 (= result!157 true)))

(assert (=> b!17453 t!347))

(declare-fun b_and!189 () Bool)

(assert (= b_and!187 (and (=> t!347 result!157) b_and!189)))

(declare-fun b_lambda!8099 () Bool)

(assert (=> (not b_lambda!8099) (not b!17462)))

(declare-fun t!349 () Bool)

(declare-fun tb!159 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!349) tb!159))

(declare-fun result!159 () Bool)

(assert (=> tb!159 (= result!159 true)))

(assert (=> b!17462 t!349))

(declare-fun b_and!191 () Bool)

(assert (= b_and!189 (and (=> t!349 result!159) b_and!191)))

(declare-fun b_lambda!8101 () Bool)

(assert (=> (not b_lambda!8101) (not b!17459)))

(declare-fun t!351 () Bool)

(declare-fun tb!161 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!351) tb!161))

(declare-fun result!161 () Bool)

(assert (=> tb!161 (= result!161 true)))

(assert (=> b!17459 t!351))

(declare-fun b_and!193 () Bool)

(assert (= b_and!191 (and (=> t!351 result!161) b_and!193)))

(declare-fun b_lambda!8103 () Bool)

(assert (=> (not b_lambda!8103) (not b!17452)))

(declare-fun t!353 () Bool)

(declare-fun tb!163 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!353) tb!163))

(declare-fun result!163 () Bool)

(assert (=> tb!163 (= result!163 true)))

(assert (=> b!17452 t!353))

(declare-fun b_and!195 () Bool)

(assert (= b_and!193 (and (=> t!353 result!163) b_and!195)))

(declare-fun b_lambda!8105 () Bool)

(assert (=> (not b_lambda!8105) (not b!17457)))

(declare-fun t!355 () Bool)

(declare-fun tb!165 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!355) tb!165))

(declare-fun result!165 () Bool)

(assert (=> tb!165 (= result!165 true)))

(assert (=> b!17457 t!355))

(declare-fun b_and!197 () Bool)

(assert (= b_and!195 (and (=> t!355 result!165) b_and!197)))

(declare-fun b_lambda!8107 () Bool)

(assert (=> (not b_lambda!8107) (not b!17458)))

(declare-fun t!357 () Bool)

(declare-fun tb!167 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!357) tb!167))

(declare-fun result!167 () Bool)

(assert (=> tb!167 (= result!167 true)))

(assert (=> b!17458 t!357))

(declare-fun b_and!199 () Bool)

(assert (= b_and!197 (and (=> t!357 result!167) b_and!199)))

(declare-fun b_lambda!8109 () Bool)

(assert (=> (not b_lambda!8109) (not b!17460)))

(declare-fun t!359 () Bool)

(declare-fun tb!169 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!359) tb!169))

(declare-fun result!169 () Bool)

(assert (=> tb!169 (= result!169 true)))

(assert (=> b!17460 t!359))

(declare-fun b_and!201 () Bool)

(assert (= b_and!199 (and (=> t!359 result!169) b_and!201)))

(declare-fun b_lambda!8111 () Bool)

(assert (=> (not b_lambda!8111) (not b!17456)))

(declare-fun t!361 () Bool)

(declare-fun tb!171 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!361) tb!171))

(declare-fun result!171 () Bool)

(assert (=> tb!171 (= result!171 true)))

(assert (=> b!17456 t!361))

(declare-fun b_and!203 () Bool)

(assert (= b_and!201 (and (=> t!361 result!171) b_and!203)))

(declare-fun b_lambda!8113 () Bool)

(assert (=> (not b_lambda!8113) (not b!17455)))

(declare-fun t!363 () Bool)

(declare-fun tb!173 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!363) tb!173))

(declare-fun result!173 () Bool)

(assert (=> tb!173 (= result!173 true)))

(assert (=> b!17455 t!363))

(declare-fun b_and!205 () Bool)

(assert (= b_and!203 (and (=> t!363 result!173) b_and!205)))

(declare-fun b_lambda!8115 () Bool)

(assert (=> (not b_lambda!8115) (not b!17454)))

(declare-fun t!365 () Bool)

(declare-fun tb!175 () Bool)

(assert (=> (and start!3119 (= P!6 P!6) t!365) tb!175))

(declare-fun result!175 () Bool)

(assert (=> tb!175 (= result!175 true)))

(assert (=> b!17454 t!365))

(declare-fun b_and!207 () Bool)

(assert (= b_and!205 (and (=> t!365 result!175) b_and!207)))

(declare-fun m!27661 () Bool)

(assert (=> b!17456 m!27661))

(assert (=> b!17456 m!27661))

(declare-fun m!27663 () Bool)

(assert (=> b!17456 m!27663))

(declare-fun m!27665 () Bool)

(assert (=> b!17451 m!27665))

(assert (=> b!17451 m!27665))

(declare-fun m!27667 () Bool)

(assert (=> b!17451 m!27667))

(declare-fun m!27669 () Bool)

(assert (=> b!17453 m!27669))

(assert (=> b!17453 m!27669))

(declare-fun m!27671 () Bool)

(assert (=> b!17453 m!27671))

(declare-fun m!27673 () Bool)

(assert (=> b!17462 m!27673))

(assert (=> b!17462 m!27673))

(declare-fun m!27675 () Bool)

(assert (=> b!17462 m!27675))

(declare-fun m!27677 () Bool)

(assert (=> b!17455 m!27677))

(assert (=> b!17455 m!27677))

(declare-fun m!27679 () Bool)

(assert (=> b!17455 m!27679))

(declare-fun m!27681 () Bool)

(assert (=> b!17461 m!27681))

(assert (=> b!17461 m!27681))

(declare-fun m!27683 () Bool)

(assert (=> b!17461 m!27683))

(declare-fun m!27685 () Bool)

(assert (=> b!17458 m!27685))

(assert (=> b!17458 m!27685))

(declare-fun m!27687 () Bool)

(assert (=> b!17458 m!27687))

(declare-fun m!27689 () Bool)

(assert (=> b!17454 m!27689))

(assert (=> b!17454 m!27689))

(declare-fun m!27691 () Bool)

(assert (=> b!17454 m!27691))

(declare-fun m!27693 () Bool)

(assert (=> b!17457 m!27693))

(assert (=> b!17457 m!27693))

(declare-fun m!27695 () Bool)

(assert (=> b!17457 m!27695))

(declare-fun m!27697 () Bool)

(assert (=> start!3119 m!27697))

(declare-fun m!27699 () Bool)

(assert (=> b!17459 m!27699))

(assert (=> b!17459 m!27699))

(declare-fun m!27701 () Bool)

(assert (=> b!17459 m!27701))

(declare-fun m!27703 () Bool)

(assert (=> b!17460 m!27703))

(assert (=> b!17460 m!27703))

(declare-fun m!27705 () Bool)

(assert (=> b!17460 m!27705))

(declare-fun m!27707 () Bool)

(assert (=> b!17452 m!27707))

(assert (=> b!17452 m!27707))

(declare-fun m!27709 () Bool)

(assert (=> b!17452 m!27709))

(push 1)

(assert (not b_lambda!8095))

(assert (not b_lambda!8109))

(assert (not b_lambda!8097))

(assert (not b_lambda!8107))

(assert (not b_lambda!8105))

(assert (not b_lambda!8093))

(assert (not b_lambda!8101))

(assert (not b_lambda!8111))

(assert (not start!3119))

(assert (not b_lambda!8099))

(assert (not b_next!31))

(assert (not b_lambda!8115))

(assert (not b_lambda!8113))

(assert b_and!207)

(assert (not b_lambda!8103))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207)

(assert (not b_next!31))

(check-sat)

(pop 1)

