; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487 () Bool)

(assert start!487)

(declare-fun res!519 () Bool)

(declare-fun e!334 () Bool)

(assert (=> start!487 (=> (not res!519) (not e!334))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!487 (= res!519 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!487 e!334))

(assert (=> start!487 true))

(declare-fun b!448 () Bool)

(declare-fun e!335 () Bool)

(assert (=> b!448 (= e!334 e!335)))

(declare-fun res!520 () Bool)

(assert (=> b!448 (=> (not res!520) (not e!335))))

(declare-fun lt!486 () (_ BitVec 32))

(assert (=> b!448 (= res!520 (and (bvsle #b00000000000000000000000000000010 lt!486) (bvslt lt!486 #b00000000000000000000000000010011)))))

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

(assert (= (and start!487 res!519) b!448))

(assert (= (and b!448 res!520) b!449))

(declare-fun m!431 () Bool)

(assert (=> b!448 m!431))

(declare-fun m!433 () Bool)

(assert (=> b!448 m!433))

(declare-fun m!435 () Bool)

(assert (=> b!449 m!435))

(check-sat (not b!448) (not b!449))
(check-sat)
(get-model)

(declare-fun d!381 () Bool)

(declare-fun lt!491 () array!11)

(assert (=> d!381 (qInv!0 lt!491)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!11) array!11)

(assert (=> d!381 (= lt!491 (choose!15 lt!486 (_1!31 lt!488) (_2!31 lt!488)))))

(assert (=> d!381 (and (bvsle #b00000000000000000000000000000000 lt!486) (bvsle lt!486 #b00000000000000000000000000001111))))

(assert (=> d!381 (= (timesTwoOverPi!0 lt!486 (_1!31 lt!488) (_2!31 lt!488)) lt!491)))

(declare-fun bs!141 () Bool)

(assert (= bs!141 d!381))

(declare-fun m!437 () Bool)

(assert (=> bs!141 m!437))

(declare-fun m!439 () Bool)

(assert (=> bs!141 m!439))

(assert (=> b!448 d!381))

(declare-fun d!383 () Bool)

(declare-fun e!339 () Bool)

(assert (=> d!383 e!339))

(declare-fun res!523 () Bool)

(assert (=> d!383 (=> (not res!523) (not e!339))))

(declare-fun lt!494 () tuple2!8)

(assert (=> d!383 (= res!523 (and (bvsle #b00000000000000000000000000011000 (_1!31 lt!494)) (bvsle (_1!31 lt!494) #b00000000000000000000001111110000) (= (bvsrem (_1!31 lt!494) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!8)

(assert (=> d!383 (= lt!494 (choose!11 x!199))))

(assert (=> d!383 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!383 (= (splitInput!0 x!199) lt!494)))

(declare-fun b!452 () Bool)

(declare-fun xxInv!0 (array!11) Bool)

(assert (=> b!452 (= e!339 (xxInv!0 (_2!31 lt!494)))))

(assert (= (and d!383 res!523) b!452))

(declare-fun m!441 () Bool)

(assert (=> d!383 m!441))

(declare-fun m!443 () Bool)

(assert (=> b!452 m!443))

(assert (=> b!448 d!383))

(declare-fun d!385 () Bool)

(declare-fun res!526 () Bool)

(declare-fun e!342 () Bool)

(assert (=> d!385 (=> (not res!526) (not e!342))))

(assert (=> d!385 (= res!526 (= (size!5 lt!487) #b00000000000000000000000000010100))))

(assert (=> d!385 (= (qInv!0 lt!487) e!342)))

(declare-fun b!455 () Bool)

(declare-fun lambda!5 () Int)

(declare-fun all20!0 (array!11 Int) Bool)

(assert (=> b!455 (= e!342 (all20!0 lt!487 lambda!5))))

(assert (= (and d!385 res!526) b!455))

(declare-fun m!445 () Bool)

(assert (=> b!455 m!445))

(assert (=> b!449 d!385))

(check-sat (not b!455) (not d!383) (not b!452) (not d!381))
(check-sat)
