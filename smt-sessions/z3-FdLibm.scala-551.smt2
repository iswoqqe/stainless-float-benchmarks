; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2953 () Bool)

(assert start!2953)

(declare-fun b_free!19 () Bool)

(declare-fun b_next!19 () Bool)

(assert (=> start!2953 (= b_free!19 (not b_next!19))))

(declare-fun tp!29 () Bool)

(declare-fun b_and!69 () Bool)

(assert (=> start!2953 (= tp!29 b_and!69)))

(declare-fun b!16397 () Bool)

(declare-fun res!12949 () Bool)

(declare-fun e!9098 () Bool)

(assert (=> b!16397 (=> (not res!12949) (not e!9098))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1358 0))(
  ( (array!1359 (arr!596 (Array (_ BitVec 32) (_ BitVec 32))) (size!596 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1358)

(declare-fun dynLambda!48 (Int (_ BitVec 32)) Bool)

(assert (=> b!16397 (= res!12949 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16398 () Bool)

(declare-fun res!12951 () Bool)

(assert (=> b!16398 (=> (not res!12951) (not e!9098))))

(assert (=> b!16398 (= res!12951 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16399 () Bool)

(declare-fun res!12945 () Bool)

(assert (=> b!16399 (=> (not res!12945) (not e!9098))))

(assert (=> b!16399 (= res!12945 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!16400 () Bool)

(declare-fun res!12946 () Bool)

(assert (=> b!16400 (=> (not res!12946) (not e!9098))))

(assert (=> b!16400 (= res!12946 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16401 () Bool)

(declare-fun res!12950 () Bool)

(assert (=> b!16401 (=> (not res!12950) (not e!9098))))

(assert (=> b!16401 (= res!12950 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000101)))))

(declare-fun res!12947 () Bool)

(assert (=> start!2953 (=> (not res!12947) (not e!9098))))

(assert (=> start!2953 (= res!12947 (= (size!596 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2953 e!9098))

(declare-fun array_inv!544 (array!1358) Bool)

(assert (=> start!2953 (array_inv!544 a!13)))

(assert (=> start!2953 tp!29))

(declare-fun b!16402 () Bool)

(declare-fun res!12948 () Bool)

(assert (=> b!16402 (=> (not res!12948) (not e!9098))))

(assert (=> b!16402 (= res!12948 (dynLambda!48 P!6 (select (arr!596 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16403 () Bool)

(assert (=> b!16403 (= e!9098 (bvsge #b00000000000000000000000000000110 (size!596 a!13)))))

(assert (= (and start!2953 res!12947) b!16398))

(assert (= (and b!16398 res!12951) b!16397))

(assert (= (and b!16397 res!12949) b!16400))

(assert (= (and b!16400 res!12946) b!16402))

(assert (= (and b!16402 res!12948) b!16399))

(assert (= (and b!16399 res!12945) b!16401))

(assert (= (and b!16401 res!12950) b!16403))

(declare-fun b_lambda!6631 () Bool)

(assert (=> (not b_lambda!6631) (not b!16400)))

(declare-fun t!241 () Bool)

(declare-fun tb!51 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!241) tb!51))

(declare-fun result!51 () Bool)

(assert (=> tb!51 (= result!51 true)))

(assert (=> b!16400 t!241))

(declare-fun b_and!71 () Bool)

(assert (= b_and!69 (and (=> t!241 result!51) b_and!71)))

(declare-fun b_lambda!6633 () Bool)

(assert (=> (not b_lambda!6633) (not b!16402)))

(declare-fun t!243 () Bool)

(declare-fun tb!53 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!243) tb!53))

(declare-fun result!53 () Bool)

(assert (=> tb!53 (= result!53 true)))

(assert (=> b!16402 t!243))

(declare-fun b_and!73 () Bool)

(assert (= b_and!71 (and (=> t!243 result!53) b_and!73)))

(declare-fun b_lambda!6635 () Bool)

(assert (=> (not b_lambda!6635) (not b!16401)))

(declare-fun t!245 () Bool)

(declare-fun tb!55 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!245) tb!55))

(declare-fun result!55 () Bool)

(assert (=> tb!55 (= result!55 true)))

(assert (=> b!16401 t!245))

(declare-fun b_and!75 () Bool)

(assert (= b_and!73 (and (=> t!245 result!55) b_and!75)))

(declare-fun b_lambda!6637 () Bool)

(assert (=> (not b_lambda!6637) (not b!16397)))

(declare-fun t!247 () Bool)

(declare-fun tb!57 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!247) tb!57))

(declare-fun result!57 () Bool)

(assert (=> tb!57 (= result!57 true)))

(assert (=> b!16397 t!247))

(declare-fun b_and!77 () Bool)

(assert (= b_and!75 (and (=> t!247 result!57) b_and!77)))

(declare-fun b_lambda!6639 () Bool)

(assert (=> (not b_lambda!6639) (not b!16398)))

(declare-fun t!249 () Bool)

(declare-fun tb!59 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!249) tb!59))

(declare-fun result!59 () Bool)

(assert (=> tb!59 (= result!59 true)))

(assert (=> b!16398 t!249))

(declare-fun b_and!79 () Bool)

(assert (= b_and!77 (and (=> t!249 result!59) b_and!79)))

(declare-fun b_lambda!6641 () Bool)

(assert (=> (not b_lambda!6641) (not b!16399)))

(declare-fun t!251 () Bool)

(declare-fun tb!61 () Bool)

(assert (=> (and start!2953 (= P!6 P!6) t!251) tb!61))

(declare-fun result!61 () Bool)

(assert (=> tb!61 (= result!61 true)))

(assert (=> b!16399 t!251))

(declare-fun b_and!81 () Bool)

(assert (= b_and!79 (and (=> t!251 result!61) b_and!81)))

(declare-fun m!24601 () Bool)

(assert (=> b!16401 m!24601))

(assert (=> b!16401 m!24601))

(declare-fun m!24603 () Bool)

(assert (=> b!16401 m!24603))

(declare-fun m!24605 () Bool)

(assert (=> b!16402 m!24605))

(assert (=> b!16402 m!24605))

(declare-fun m!24607 () Bool)

(assert (=> b!16402 m!24607))

(declare-fun m!24609 () Bool)

(assert (=> b!16399 m!24609))

(assert (=> b!16399 m!24609))

(declare-fun m!24611 () Bool)

(assert (=> b!16399 m!24611))

(declare-fun m!24613 () Bool)

(assert (=> b!16400 m!24613))

(assert (=> b!16400 m!24613))

(declare-fun m!24615 () Bool)

(assert (=> b!16400 m!24615))

(declare-fun m!24617 () Bool)

(assert (=> b!16398 m!24617))

(assert (=> b!16398 m!24617))

(declare-fun m!24619 () Bool)

(assert (=> b!16398 m!24619))

(declare-fun m!24621 () Bool)

(assert (=> b!16397 m!24621))

(assert (=> b!16397 m!24621))

(declare-fun m!24623 () Bool)

(assert (=> b!16397 m!24623))

(declare-fun m!24625 () Bool)

(assert (=> start!2953 m!24625))

(check-sat b_and!81 (not b_lambda!6631) (not b_lambda!6639) (not b_lambda!6641) (not b_next!19) (not b_lambda!6637) (not b_lambda!6635) (not start!2953) (not b_lambda!6633))
(check-sat b_and!81 (not b_next!19))
