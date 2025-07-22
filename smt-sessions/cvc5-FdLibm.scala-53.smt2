; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!487 () Bool)

(assert start!487)

(declare-fun res!520 () Bool)

(declare-fun e!334 () Bool)

(assert (=> start!487 (=> (not res!520) (not e!334))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!487 (= res!520 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!487 e!334))

(assert (=> start!487 true))

(declare-fun b!448 () Bool)

(declare-fun e!335 () Bool)

(assert (=> b!448 (= e!334 e!335)))

(declare-fun res!519 () Bool)

(assert (=> b!448 (=> (not res!519) (not e!335))))

(declare-fun lt!486 () (_ BitVec 32))

(assert (=> b!448 (= res!519 (and (bvsle #b00000000000000000000000000000010 lt!486) (bvslt lt!486 #b00000000000000000000000000010011)))))

(declare-datatypes ((array!11 0))(
  ( (array!12 (arr!5 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!5 (_ BitVec 32))) )
))
(declare-fun lt!487 () array!11)

(declare-datatypes ((tuple2!8 0))(
  ( (tuple2!9 (_1!31 (_ BitVec 32)) (_2!31 array!11)) )
))
(declare-fun lt!488 () tuple2!8)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!11) array!11)

(assert (=> b!448 (= lt!487 (timesTwoOverPi!0 lt!486 (_1!31 lt!488) (_2!31 lt!488)))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!8)

(assert (=> b!448 (= lt!488 (splitInput!0 x!199))))

(assert (=> b!448 (= lt!486 #b00000000000000000000000000000110)))

(declare-fun b!449 () Bool)

(declare-fun qInv!0 (array!11) Bool)

(assert (=> b!449 (= e!335 (not (qInv!0 lt!487)))))

(assert (= (and start!487 res!520) b!448))

(assert (= (and b!448 res!519) b!449))

(declare-fun m!431 () Bool)

(assert (=> b!448 m!431))

(declare-fun m!433 () Bool)

(assert (=> b!448 m!433))

(declare-fun m!435 () Bool)

(assert (=> b!449 m!435))

(push 1)

(assert (not b!449))

(assert (not b!448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!435 () Bool)

(declare-fun res!523 () Bool)

(declare-fun e!338 () Bool)

(assert (=> d!435 (=> (not res!523) (not e!338))))

(assert (=> d!435 (= res!523 (= (size!5 lt!487) #b00000000000000000000000000010100))))

(assert (=> d!435 (= (qInv!0 lt!487) e!338)))

(declare-fun b!452 () Bool)

(declare-fun lambda!5 () Int)

(declare-fun all20!0 (array!11 Int) Bool)

(assert (=> b!452 (= e!338 (all20!0 lt!487 lambda!5))))

(assert (= (and d!435 res!523) b!452))

(declare-fun m!437 () Bool)

(assert (=> b!452 m!437))

(assert (=> b!449 d!435))

(declare-fun d!437 () Bool)

(declare-fun lt!491 () array!11)

(assert (=> d!437 (qInv!0 lt!491)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!11) array!11)

(assert (=> d!437 (= lt!491 (choose!15 lt!486 (_1!31 lt!488) (_2!31 lt!488)))))

(assert (=> d!437 (and (bvsle #b00000000000000000000000000000000 lt!486) (bvsle lt!486 #b00000000000000000000000000001111))))

(assert (=> d!437 (= (timesTwoOverPi!0 lt!486 (_1!31 lt!488) (_2!31 lt!488)) lt!491)))

(declare-fun bs!141 () Bool)

(assert (= bs!141 d!437))

(declare-fun m!439 () Bool)

(assert (=> bs!141 m!439))

(declare-fun m!441 () Bool)

(assert (=> bs!141 m!441))

(assert (=> b!448 d!437))

(declare-fun d!439 () Bool)

(declare-fun e!342 () Bool)

(assert (=> d!439 e!342))

(declare-fun res!526 () Bool)

(assert (=> d!439 (=> (not res!526) (not e!342))))

(declare-fun lt!494 () tuple2!8)

(assert (=> d!439 (= res!526 (and (bvsle #b00000000000000000000000000011000 (_1!31 lt!494)) (bvsle (_1!31 lt!494) #b00000000000000000000001111110000) (= (bvsrem (_1!31 lt!494) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!8)

(assert (=> d!439 (= lt!494 (choose!11 x!199))))

(assert (=> d!439 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!439 (= (splitInput!0 x!199) lt!494)))

(declare-fun b!455 () Bool)

(declare-fun xxInv!0 (array!11) Bool)

(assert (=> b!455 (= e!342 (xxInv!0 (_2!31 lt!494)))))

(assert (= (and d!439 res!526) b!455))

(declare-fun m!443 () Bool)

(assert (=> d!439 m!443))

(declare-fun m!445 () Bool)

(assert (=> b!455 m!445))

(assert (=> b!448 d!439))

(push 1)

(assert (not b!455))

(assert (not d!439))

(assert (not d!437))

(assert (not b!452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

