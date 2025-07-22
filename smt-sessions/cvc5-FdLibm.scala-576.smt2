; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3157 () Bool)

(assert start!3157)

(declare-fun b_free!65 () Bool)

(declare-fun b_next!65 () Bool)

(assert (=> start!3157 (= b_free!65 (not b_next!65))))

(declare-fun tp!98 () Bool)

(declare-fun b_and!555 () Bool)

(assert (=> start!3157 (= tp!98 b_and!555)))

(declare-fun b!18004 () Bool)

(declare-fun res!14437 () Bool)

(declare-fun e!9495 () Bool)

(assert (=> b!18004 (=> (not res!14437) (not e!9495))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1418 0))(
  ( (array!1419 (arr!621 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!621 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1418)

(declare-fun dynLambda!75 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!18004 (= res!14437 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000101)))))

(declare-fun res!14435 () Bool)

(assert (=> start!3157 (=> (not res!14435) (not e!9495))))

(assert (=> start!3157 (= res!14435 (= (size!621 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3157 e!9495))

(declare-fun array_inv!569 (array!1418) Bool)

(assert (=> start!3157 (array_inv!569 a!12)))

(assert (=> start!3157 tp!98))

(declare-fun b!18005 () Bool)

(declare-fun res!14442 () Bool)

(assert (=> b!18005 (=> (not res!14442) (not e!9495))))

(assert (=> b!18005 (= res!14442 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!18006 () Bool)

(declare-fun res!14436 () Bool)

(assert (=> b!18006 (=> (not res!14436) (not e!9495))))

(assert (=> b!18006 (= res!14436 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!18007 () Bool)

(declare-fun res!14441 () Bool)

(assert (=> b!18007 (=> (not res!14441) (not e!9495))))

(assert (=> b!18007 (= res!14441 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!18008 () Bool)

(declare-fun res!14434 () Bool)

(assert (=> b!18008 (=> (not res!14434) (not e!9495))))

(assert (=> b!18008 (= res!14434 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000110)))))

(declare-fun b!18009 () Bool)

(declare-fun res!14438 () Bool)

(assert (=> b!18009 (=> (not res!14438) (not e!9495))))

(assert (=> b!18009 (= res!14438 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000001001)))))

(declare-fun b!18010 () Bool)

(declare-fun res!14439 () Bool)

(assert (=> b!18010 (=> (not res!14439) (not e!9495))))

(assert (=> b!18010 (= res!14439 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!18011 () Bool)

(declare-fun res!14440 () Bool)

(assert (=> b!18011 (=> (not res!14440) (not e!9495))))

(assert (=> b!18011 (= res!14440 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000001000)))))

(declare-fun b!18012 () Bool)

(assert (=> b!18012 (= e!9495 (bvsge #b00000000000000000000000000001010 (size!621 a!12)))))

(declare-fun b!18013 () Bool)

(declare-fun res!14433 () Bool)

(assert (=> b!18013 (=> (not res!14433) (not e!9495))))

(assert (=> b!18013 (= res!14433 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000111)))))

(declare-fun b!18014 () Bool)

(declare-fun res!14432 () Bool)

(assert (=> b!18014 (=> (not res!14432) (not e!9495))))

(assert (=> b!18014 (= res!14432 (dynLambda!75 P!5 (select (arr!621 a!12) #b00000000000000000000000000000011)))))

(assert (= (and start!3157 res!14435) b!18010))

(assert (= (and b!18010 res!14439) b!18005))

(assert (= (and b!18005 res!14442) b!18007))

(assert (= (and b!18007 res!14441) b!18014))

(assert (= (and b!18014 res!14432) b!18006))

(assert (= (and b!18006 res!14436) b!18004))

(assert (= (and b!18004 res!14437) b!18008))

(assert (= (and b!18008 res!14434) b!18013))

(assert (= (and b!18013 res!14433) b!18011))

(assert (= (and b!18011 res!14440) b!18009))

(assert (= (and b!18009 res!14438) b!18012))

(declare-fun b_lambda!8431 () Bool)

(assert (=> (not b_lambda!8431) (not b!18009)))

(declare-fun t!681 () Bool)

(declare-fun tb!491 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!681) tb!491))

(declare-fun result!491 () Bool)

(assert (=> tb!491 (= result!491 true)))

(assert (=> b!18009 t!681))

(declare-fun b_and!557 () Bool)

(assert (= b_and!555 (and (=> t!681 result!491) b_and!557)))

(declare-fun b_lambda!8433 () Bool)

(assert (=> (not b_lambda!8433) (not b!18006)))

(declare-fun t!683 () Bool)

(declare-fun tb!493 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!683) tb!493))

(declare-fun result!493 () Bool)

(assert (=> tb!493 (= result!493 true)))

(assert (=> b!18006 t!683))

(declare-fun b_and!559 () Bool)

(assert (= b_and!557 (and (=> t!683 result!493) b_and!559)))

(declare-fun b_lambda!8435 () Bool)

(assert (=> (not b_lambda!8435) (not b!18013)))

(declare-fun t!685 () Bool)

(declare-fun tb!495 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!685) tb!495))

(declare-fun result!495 () Bool)

(assert (=> tb!495 (= result!495 true)))

(assert (=> b!18013 t!685))

(declare-fun b_and!561 () Bool)

(assert (= b_and!559 (and (=> t!685 result!495) b_and!561)))

(declare-fun b_lambda!8437 () Bool)

(assert (=> (not b_lambda!8437) (not b!18005)))

(declare-fun t!687 () Bool)

(declare-fun tb!497 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!687) tb!497))

(declare-fun result!497 () Bool)

(assert (=> tb!497 (= result!497 true)))

(assert (=> b!18005 t!687))

(declare-fun b_and!563 () Bool)

(assert (= b_and!561 (and (=> t!687 result!497) b_and!563)))

(declare-fun b_lambda!8439 () Bool)

(assert (=> (not b_lambda!8439) (not b!18010)))

(declare-fun t!689 () Bool)

(declare-fun tb!499 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!689) tb!499))

(declare-fun result!499 () Bool)

(assert (=> tb!499 (= result!499 true)))

(assert (=> b!18010 t!689))

(declare-fun b_and!565 () Bool)

(assert (= b_and!563 (and (=> t!689 result!499) b_and!565)))

(declare-fun b_lambda!8441 () Bool)

(assert (=> (not b_lambda!8441) (not b!18011)))

(declare-fun t!691 () Bool)

(declare-fun tb!501 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!691) tb!501))

(declare-fun result!501 () Bool)

(assert (=> tb!501 (= result!501 true)))

(assert (=> b!18011 t!691))

(declare-fun b_and!567 () Bool)

(assert (= b_and!565 (and (=> t!691 result!501) b_and!567)))

(declare-fun b_lambda!8443 () Bool)

(assert (=> (not b_lambda!8443) (not b!18008)))

(declare-fun t!693 () Bool)

(declare-fun tb!503 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!693) tb!503))

(declare-fun result!503 () Bool)

(assert (=> tb!503 (= result!503 true)))

(assert (=> b!18008 t!693))

(declare-fun b_and!569 () Bool)

(assert (= b_and!567 (and (=> t!693 result!503) b_and!569)))

(declare-fun b_lambda!8445 () Bool)

(assert (=> (not b_lambda!8445) (not b!18004)))

(declare-fun t!695 () Bool)

(declare-fun tb!505 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!695) tb!505))

(declare-fun result!505 () Bool)

(assert (=> tb!505 (= result!505 true)))

(assert (=> b!18004 t!695))

(declare-fun b_and!571 () Bool)

(assert (= b_and!569 (and (=> t!695 result!505) b_and!571)))

(declare-fun b_lambda!8447 () Bool)

(assert (=> (not b_lambda!8447) (not b!18007)))

(declare-fun t!697 () Bool)

(declare-fun tb!507 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!697) tb!507))

(declare-fun result!507 () Bool)

(assert (=> tb!507 (= result!507 true)))

(assert (=> b!18007 t!697))

(declare-fun b_and!573 () Bool)

(assert (= b_and!571 (and (=> t!697 result!507) b_and!573)))

(declare-fun b_lambda!8449 () Bool)

(assert (=> (not b_lambda!8449) (not b!18014)))

(declare-fun t!699 () Bool)

(declare-fun tb!509 () Bool)

(assert (=> (and start!3157 (= P!5 P!5) t!699) tb!509))

(declare-fun result!509 () Bool)

(assert (=> tb!509 (= result!509 true)))

(assert (=> b!18014 t!699))

(declare-fun b_and!575 () Bool)

(assert (= b_and!573 (and (=> t!699 result!509) b_and!575)))

(declare-fun m!28375 () Bool)

(assert (=> b!18005 m!28375))

(assert (=> b!18005 m!28375))

(declare-fun m!28377 () Bool)

(assert (=> b!18005 m!28377))

(declare-fun m!28379 () Bool)

(assert (=> b!18013 m!28379))

(assert (=> b!18013 m!28379))

(declare-fun m!28381 () Bool)

(assert (=> b!18013 m!28381))

(declare-fun m!28383 () Bool)

(assert (=> b!18014 m!28383))

(assert (=> b!18014 m!28383))

(declare-fun m!28385 () Bool)

(assert (=> b!18014 m!28385))

(declare-fun m!28387 () Bool)

(assert (=> start!3157 m!28387))

(declare-fun m!28389 () Bool)

(assert (=> b!18006 m!28389))

(assert (=> b!18006 m!28389))

(declare-fun m!28391 () Bool)

(assert (=> b!18006 m!28391))

(declare-fun m!28393 () Bool)

(assert (=> b!18009 m!28393))

(assert (=> b!18009 m!28393))

(declare-fun m!28395 () Bool)

(assert (=> b!18009 m!28395))

(declare-fun m!28397 () Bool)

(assert (=> b!18011 m!28397))

(assert (=> b!18011 m!28397))

(declare-fun m!28399 () Bool)

(assert (=> b!18011 m!28399))

(declare-fun m!28401 () Bool)

(assert (=> b!18010 m!28401))

(assert (=> b!18010 m!28401))

(declare-fun m!28403 () Bool)

(assert (=> b!18010 m!28403))

(declare-fun m!28405 () Bool)

(assert (=> b!18007 m!28405))

(assert (=> b!18007 m!28405))

(declare-fun m!28407 () Bool)

(assert (=> b!18007 m!28407))

(declare-fun m!28409 () Bool)

(assert (=> b!18004 m!28409))

(assert (=> b!18004 m!28409))

(declare-fun m!28411 () Bool)

(assert (=> b!18004 m!28411))

(declare-fun m!28413 () Bool)

(assert (=> b!18008 m!28413))

(assert (=> b!18008 m!28413))

(declare-fun m!28415 () Bool)

(assert (=> b!18008 m!28415))

(push 1)

(assert (not b_lambda!8433))

(assert (not b_lambda!8435))

(assert (not b_lambda!8441))

(assert (not b_lambda!8449))

(assert (not b_lambda!8437))

(assert b_and!575)

(assert (not b_lambda!8439))

(assert (not b_lambda!8443))

(assert (not b_lambda!8447))

(assert (not b_next!65))

(assert (not b_lambda!8431))

(assert (not b_lambda!8445))

(assert (not start!3157))

(check-sat)

(pop 1)

(push 1)

(assert b_and!575)

(assert (not b_next!65))

(check-sat)

(pop 1)

