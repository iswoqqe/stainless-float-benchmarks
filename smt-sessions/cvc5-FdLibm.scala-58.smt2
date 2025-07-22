; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!521 () Bool)

(assert start!521)

(declare-fun res!580 () Bool)

(declare-fun e!395 () Bool)

(assert (=> start!521 (=> (not res!580) (not e!395))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!521 (= res!580 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!521 e!395))

(assert (=> start!521 true))

(declare-fun b!509 () Bool)

(declare-datatypes ((array!21 0))(
  ( (array!22 (arr!10 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!10 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!8 0))(
  ( (tuple4!9 (_1!40 (_ BitVec 32)) (_2!40 Bool) (_3!31 Bool) (_4!4 array!21)) )
))
(declare-fun lt!563 () tuple4!8)

(assert (=> b!509 (= e!395 (and (_3!31 lt!563) (or (bvsgt #b00000000000000000000000000000000 (_1!40 lt!563)) (bvsge (_1!40 lt!563) #b00000000000000000000000000001000) false false false)))))

(declare-fun lt!561 () (_ BitVec 32))

(declare-datatypes ((tuple2!18 0))(
  ( (tuple2!19 (_1!41 (_ BitVec 32)) (_2!41 array!21)) )
))
(declare-fun lt!562 () tuple2!18)

(declare-fun computeModulo!0 ((_ BitVec 32) array!21) tuple4!8)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!21) array!21)

(assert (=> b!509 (= lt!563 (computeModulo!0 lt!561 (timesTwoOverPi!0 lt!561 (_1!41 lt!562) (_2!41 lt!562))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!18)

(assert (=> b!509 (= lt!562 (splitInput!0 x!199))))

(assert (=> b!509 (= lt!561 #b00000000000000000000000000000110)))

(assert (= (and start!521 res!580) b!509))

(declare-fun m!589 () Bool)

(assert (=> b!509 m!589))

(assert (=> b!509 m!589))

(declare-fun m!591 () Bool)

(assert (=> b!509 m!591))

(declare-fun m!593 () Bool)

(assert (=> b!509 m!593))

(push 1)

(assert (not b!509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!464 () Bool)

(declare-fun e!398 () Bool)

(assert (=> d!464 e!398))

(declare-fun res!583 () Bool)

(assert (=> d!464 (=> (not res!583) (not e!398))))

(declare-fun lt!566 () tuple4!8)

(assert (=> d!464 (= res!583 (and (bvsle #b00000000000000000000000000000000 (_1!40 lt!566)) (bvslt (_1!40 lt!566) #b00000000000000000000000000001000) (= (size!10 (_4!4 lt!566)) #b00000000000000000000000000010100)))))

(declare-fun choose!17 ((_ BitVec 32) array!21) tuple4!8)

(assert (=> d!464 (= lt!566 (choose!17 lt!561 (timesTwoOverPi!0 lt!561 (_1!41 lt!562) (_2!41 lt!562))))))

(assert (=> d!464 (and (bvsle #b00000000000000000000000000000010 lt!561) (bvslt lt!561 #b00000000000000000000000000010011))))

(assert (=> d!464 (= (computeModulo!0 lt!561 (timesTwoOverPi!0 lt!561 (_1!41 lt!562) (_2!41 lt!562))) lt!566)))

(declare-fun b!512 () Bool)

(declare-fun qqInv!0 (array!21) Bool)

(assert (=> b!512 (= e!398 (qqInv!0 (_4!4 lt!566)))))

(assert (= (and d!464 res!583) b!512))

(assert (=> d!464 m!589))

(declare-fun m!595 () Bool)

(assert (=> d!464 m!595))

(declare-fun m!597 () Bool)

(assert (=> b!512 m!597))

(assert (=> b!509 d!464))

(declare-fun d!466 () Bool)

(declare-fun lt!569 () array!21)

(declare-fun qInv!0 (array!21) Bool)

(assert (=> d!466 (qInv!0 lt!569)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!21) array!21)

(assert (=> d!466 (= lt!569 (choose!15 lt!561 (_1!41 lt!562) (_2!41 lt!562)))))

(assert (=> d!466 (and (bvsle #b00000000000000000000000000000000 lt!561) (bvsle lt!561 #b00000000000000000000000000001111))))

(assert (=> d!466 (= (timesTwoOverPi!0 lt!561 (_1!41 lt!562) (_2!41 lt!562)) lt!569)))

(declare-fun bs!151 () Bool)

(assert (= bs!151 d!466))

(declare-fun m!599 () Bool)

(assert (=> bs!151 m!599))

(declare-fun m!601 () Bool)

(assert (=> bs!151 m!601))

(assert (=> b!509 d!466))

(declare-fun d!468 () Bool)

(declare-fun e!402 () Bool)

(assert (=> d!468 e!402))

(declare-fun res!586 () Bool)

(assert (=> d!468 (=> (not res!586) (not e!402))))

(declare-fun lt!572 () tuple2!18)

(assert (=> d!468 (= res!586 (and (bvsle #b00000000000000000000000000011000 (_1!41 lt!572)) (bvsle (_1!41 lt!572) #b00000000000000000000001111110000) (= (bvsrem (_1!41 lt!572) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!18)

(assert (=> d!468 (= lt!572 (choose!11 x!199))))

(assert (=> d!468 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!468 (= (splitInput!0 x!199) lt!572)))

(declare-fun b!515 () Bool)

(declare-fun xxInv!0 (array!21) Bool)

(assert (=> b!515 (= e!402 (xxInv!0 (_2!41 lt!572)))))

(assert (= (and d!468 res!586) b!515))

(declare-fun m!603 () Bool)

(assert (=> d!468 m!603))

(declare-fun m!605 () Bool)

(assert (=> b!515 m!605))

(assert (=> b!509 d!468))

(push 1)

(assert (not b!512))

(assert (not b!515))

(assert (not d!468))

(assert (not d!464))

(assert (not d!466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

