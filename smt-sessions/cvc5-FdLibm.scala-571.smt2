; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3147 () Bool)

(assert start!3147)

(declare-fun b_free!55 () Bool)

(declare-fun b_next!55 () Bool)

(assert (=> start!3147 (= b_free!55 (not b_next!55))))

(declare-fun tp!83 () Bool)

(declare-fun b_and!475 () Bool)

(assert (=> start!3147 (= tp!83 b_and!475)))

(declare-fun b!17874 () Bool)

(declare-fun res!14302 () Bool)

(declare-fun e!9465 () Bool)

(assert (=> b!17874 (=> (not res!14302) (not e!9465))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1408 0))(
  ( (array!1409 (arr!616 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!616 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1408)

(declare-fun dynLambda!70 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17874 (= res!14302 (dynLambda!70 P!5 (select (arr!616 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17875 () Bool)

(declare-fun res!14305 () Bool)

(assert (=> b!17875 (=> (not res!14305) (not e!9465))))

(assert (=> b!17875 (= res!14305 (dynLambda!70 P!5 (select (arr!616 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!17876 () Bool)

(assert (=> b!17876 (= e!9465 (bvsge #b00000000000000000000000000000101 (size!616 a!12)))))

(declare-fun b!17877 () Bool)

(declare-fun res!14304 () Bool)

(assert (=> b!17877 (=> (not res!14304) (not e!9465))))

(assert (=> b!17877 (= res!14304 (dynLambda!70 P!5 (select (arr!616 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17878 () Bool)

(declare-fun res!14303 () Bool)

(assert (=> b!17878 (=> (not res!14303) (not e!9465))))

(assert (=> b!17878 (= res!14303 (dynLambda!70 P!5 (select (arr!616 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!17879 () Bool)

(declare-fun res!14306 () Bool)

(assert (=> b!17879 (=> (not res!14306) (not e!9465))))

(assert (=> b!17879 (= res!14306 (dynLambda!70 P!5 (select (arr!616 a!12) #b00000000000000000000000000000100)))))

(declare-fun res!14307 () Bool)

(assert (=> start!3147 (=> (not res!14307) (not e!9465))))

(assert (=> start!3147 (= res!14307 (= (size!616 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3147 e!9465))

(declare-fun array_inv!564 (array!1408) Bool)

(assert (=> start!3147 (array_inv!564 a!12)))

(assert (=> start!3147 tp!83))

(assert (= (and start!3147 res!14307) b!17877))

(assert (= (and b!17877 res!14304) b!17874))

(assert (= (and b!17874 res!14302) b!17878))

(assert (= (and b!17878 res!14303) b!17875))

(assert (= (and b!17875 res!14305) b!17879))

(assert (= (and b!17879 res!14306) b!17876))

(declare-fun b_lambda!8361 () Bool)

(assert (=> (not b_lambda!8361) (not b!17878)))

(declare-fun t!611 () Bool)

(declare-fun tb!421 () Bool)

(assert (=> (and start!3147 (= P!5 P!5) t!611) tb!421))

(declare-fun result!421 () Bool)

(assert (=> tb!421 (= result!421 true)))

(assert (=> b!17878 t!611))

(declare-fun b_and!477 () Bool)

(assert (= b_and!475 (and (=> t!611 result!421) b_and!477)))

(declare-fun b_lambda!8363 () Bool)

(assert (=> (not b_lambda!8363) (not b!17874)))

(declare-fun t!613 () Bool)

(declare-fun tb!423 () Bool)

(assert (=> (and start!3147 (= P!5 P!5) t!613) tb!423))

(declare-fun result!423 () Bool)

(assert (=> tb!423 (= result!423 true)))

(assert (=> b!17874 t!613))

(declare-fun b_and!479 () Bool)

(assert (= b_and!477 (and (=> t!613 result!423) b_and!479)))

(declare-fun b_lambda!8365 () Bool)

(assert (=> (not b_lambda!8365) (not b!17879)))

(declare-fun t!615 () Bool)

(declare-fun tb!425 () Bool)

(assert (=> (and start!3147 (= P!5 P!5) t!615) tb!425))

(declare-fun result!425 () Bool)

(assert (=> tb!425 (= result!425 true)))

(assert (=> b!17879 t!615))

(declare-fun b_and!481 () Bool)

(assert (= b_and!479 (and (=> t!615 result!425) b_and!481)))

(declare-fun b_lambda!8367 () Bool)

(assert (=> (not b_lambda!8367) (not b!17877)))

(declare-fun t!617 () Bool)

(declare-fun tb!427 () Bool)

(assert (=> (and start!3147 (= P!5 P!5) t!617) tb!427))

(declare-fun result!427 () Bool)

(assert (=> tb!427 (= result!427 true)))

(assert (=> b!17877 t!617))

(declare-fun b_and!483 () Bool)

(assert (= b_and!481 (and (=> t!617 result!427) b_and!483)))

(declare-fun b_lambda!8369 () Bool)

(assert (=> (not b_lambda!8369) (not b!17875)))

(declare-fun t!619 () Bool)

(declare-fun tb!429 () Bool)

(assert (=> (and start!3147 (= P!5 P!5) t!619) tb!429))

(declare-fun result!429 () Bool)

(assert (=> tb!429 (= result!429 true)))

(assert (=> b!17875 t!619))

(declare-fun b_and!485 () Bool)

(assert (= b_and!483 (and (=> t!619 result!429) b_and!485)))

(declare-fun m!28225 () Bool)

(assert (=> b!17879 m!28225))

(assert (=> b!17879 m!28225))

(declare-fun m!28227 () Bool)

(assert (=> b!17879 m!28227))

(declare-fun m!28229 () Bool)

(assert (=> b!17874 m!28229))

(assert (=> b!17874 m!28229))

(declare-fun m!28231 () Bool)

(assert (=> b!17874 m!28231))

(declare-fun m!28233 () Bool)

(assert (=> b!17875 m!28233))

(assert (=> b!17875 m!28233))

(declare-fun m!28235 () Bool)

(assert (=> b!17875 m!28235))

(declare-fun m!28237 () Bool)

(assert (=> b!17877 m!28237))

(assert (=> b!17877 m!28237))

(declare-fun m!28239 () Bool)

(assert (=> b!17877 m!28239))

(declare-fun m!28241 () Bool)

(assert (=> start!3147 m!28241))

(declare-fun m!28243 () Bool)

(assert (=> b!17878 m!28243))

(assert (=> b!17878 m!28243))

(declare-fun m!28245 () Bool)

(assert (=> b!17878 m!28245))

(push 1)

(assert (not b_lambda!8363))

(assert (not b_lambda!8365))

(assert b_and!485)

(assert (not b_next!55))

(assert (not b_lambda!8367))

(assert (not b_lambda!8361))

(assert (not start!3147))

(assert (not b_lambda!8369))

(check-sat)

(pop 1)

(push 1)

(assert b_and!485)

(assert (not b_next!55))

(check-sat)

(pop 1)

