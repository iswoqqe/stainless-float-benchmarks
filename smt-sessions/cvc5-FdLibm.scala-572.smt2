; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3149 () Bool)

(assert start!3149)

(declare-fun b_free!57 () Bool)

(declare-fun b_next!57 () Bool)

(assert (=> start!3149 (= b_free!57 (not b_next!57))))

(declare-fun tp!86 () Bool)

(declare-fun b_and!487 () Bool)

(assert (=> start!3149 (= tp!86 b_and!487)))

(declare-fun b!17894 () Bool)

(declare-fun res!14325 () Bool)

(declare-fun e!9471 () Bool)

(assert (=> b!17894 (=> (not res!14325) (not e!9471))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1410 0))(
  ( (array!1411 (arr!617 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!617 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1410)

(declare-fun dynLambda!71 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17894 (= res!14325 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17895 () Bool)

(declare-fun res!14328 () Bool)

(assert (=> b!17895 (=> (not res!14328) (not e!9471))))

(assert (=> b!17895 (= res!14328 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!17896 () Bool)

(declare-fun res!14322 () Bool)

(assert (=> b!17896 (=> (not res!14322) (not e!9471))))

(assert (=> b!17896 (= res!14322 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000001)))))

(declare-fun res!14327 () Bool)

(assert (=> start!3149 (=> (not res!14327) (not e!9471))))

(assert (=> start!3149 (= res!14327 (= (size!617 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3149 e!9471))

(declare-fun array_inv!565 (array!1410) Bool)

(assert (=> start!3149 (array_inv!565 a!12)))

(assert (=> start!3149 tp!86))

(declare-fun b!17897 () Bool)

(declare-fun res!14323 () Bool)

(assert (=> b!17897 (=> (not res!14323) (not e!9471))))

(assert (=> b!17897 (= res!14323 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!17898 () Bool)

(declare-fun res!14324 () Bool)

(assert (=> b!17898 (=> (not res!14324) (not e!9471))))

(assert (=> b!17898 (= res!14324 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000101)))))

(declare-fun b!17899 () Bool)

(declare-fun res!14326 () Bool)

(assert (=> b!17899 (=> (not res!14326) (not e!9471))))

(assert (=> b!17899 (= res!14326 (dynLambda!71 P!5 (select (arr!617 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!17900 () Bool)

(assert (=> b!17900 (= e!9471 (bvsge #b00000000000000000000000000000110 (size!617 a!12)))))

(assert (= (and start!3149 res!14327) b!17894))

(assert (= (and b!17894 res!14325) b!17896))

(assert (= (and b!17896 res!14322) b!17895))

(assert (= (and b!17895 res!14328) b!17899))

(assert (= (and b!17899 res!14326) b!17897))

(assert (= (and b!17897 res!14323) b!17898))

(assert (= (and b!17898 res!14324) b!17900))

(declare-fun b_lambda!8371 () Bool)

(assert (=> (not b_lambda!8371) (not b!17896)))

(declare-fun t!621 () Bool)

(declare-fun tb!431 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!621) tb!431))

(declare-fun result!431 () Bool)

(assert (=> tb!431 (= result!431 true)))

(assert (=> b!17896 t!621))

(declare-fun b_and!489 () Bool)

(assert (= b_and!487 (and (=> t!621 result!431) b_and!489)))

(declare-fun b_lambda!8373 () Bool)

(assert (=> (not b_lambda!8373) (not b!17897)))

(declare-fun t!623 () Bool)

(declare-fun tb!433 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!623) tb!433))

(declare-fun result!433 () Bool)

(assert (=> tb!433 (= result!433 true)))

(assert (=> b!17897 t!623))

(declare-fun b_and!491 () Bool)

(assert (= b_and!489 (and (=> t!623 result!433) b_and!491)))

(declare-fun b_lambda!8375 () Bool)

(assert (=> (not b_lambda!8375) (not b!17898)))

(declare-fun t!625 () Bool)

(declare-fun tb!435 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!625) tb!435))

(declare-fun result!435 () Bool)

(assert (=> tb!435 (= result!435 true)))

(assert (=> b!17898 t!625))

(declare-fun b_and!493 () Bool)

(assert (= b_and!491 (and (=> t!625 result!435) b_and!493)))

(declare-fun b_lambda!8377 () Bool)

(assert (=> (not b_lambda!8377) (not b!17895)))

(declare-fun t!627 () Bool)

(declare-fun tb!437 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!627) tb!437))

(declare-fun result!437 () Bool)

(assert (=> tb!437 (= result!437 true)))

(assert (=> b!17895 t!627))

(declare-fun b_and!495 () Bool)

(assert (= b_and!493 (and (=> t!627 result!437) b_and!495)))

(declare-fun b_lambda!8379 () Bool)

(assert (=> (not b_lambda!8379) (not b!17899)))

(declare-fun t!629 () Bool)

(declare-fun tb!439 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!629) tb!439))

(declare-fun result!439 () Bool)

(assert (=> tb!439 (= result!439 true)))

(assert (=> b!17899 t!629))

(declare-fun b_and!497 () Bool)

(assert (= b_and!495 (and (=> t!629 result!439) b_and!497)))

(declare-fun b_lambda!8381 () Bool)

(assert (=> (not b_lambda!8381) (not b!17894)))

(declare-fun t!631 () Bool)

(declare-fun tb!441 () Bool)

(assert (=> (and start!3149 (= P!5 P!5) t!631) tb!441))

(declare-fun result!441 () Bool)

(assert (=> tb!441 (= result!441 true)))

(assert (=> b!17894 t!631))

(declare-fun b_and!499 () Bool)

(assert (= b_and!497 (and (=> t!631 result!441) b_and!499)))

(declare-fun m!28247 () Bool)

(assert (=> b!17896 m!28247))

(assert (=> b!17896 m!28247))

(declare-fun m!28249 () Bool)

(assert (=> b!17896 m!28249))

(declare-fun m!28251 () Bool)

(assert (=> b!17895 m!28251))

(assert (=> b!17895 m!28251))

(declare-fun m!28253 () Bool)

(assert (=> b!17895 m!28253))

(declare-fun m!28255 () Bool)

(assert (=> b!17894 m!28255))

(assert (=> b!17894 m!28255))

(declare-fun m!28257 () Bool)

(assert (=> b!17894 m!28257))

(declare-fun m!28259 () Bool)

(assert (=> b!17897 m!28259))

(assert (=> b!17897 m!28259))

(declare-fun m!28261 () Bool)

(assert (=> b!17897 m!28261))

(declare-fun m!28263 () Bool)

(assert (=> b!17899 m!28263))

(assert (=> b!17899 m!28263))

(declare-fun m!28265 () Bool)

(assert (=> b!17899 m!28265))

(declare-fun m!28267 () Bool)

(assert (=> b!17898 m!28267))

(assert (=> b!17898 m!28267))

(declare-fun m!28269 () Bool)

(assert (=> b!17898 m!28269))

(declare-fun m!28271 () Bool)

(assert (=> start!3149 m!28271))

(push 1)

(assert (not b_lambda!8381))

(assert b_and!499)

(assert (not b_lambda!8379))

(assert (not b_next!57))

(assert (not b_lambda!8375))

(assert (not b_lambda!8371))

(assert (not start!3149))

(assert (not b_lambda!8377))

(assert (not b_lambda!8373))

(check-sat)

(pop 1)

(push 1)

(assert b_and!499)

(assert (not b_next!57))

(check-sat)

(pop 1)

