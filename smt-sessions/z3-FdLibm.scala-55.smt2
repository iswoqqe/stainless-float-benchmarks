; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497 () Bool)

(assert start!497)

(declare-fun res!541 () Bool)

(declare-fun e!357 () Bool)

(assert (=> start!497 (=> (not res!541) (not e!357))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!497 (= res!541 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!497 e!357))

(assert (=> start!497 true))

(declare-fun b!468 () Bool)

(declare-fun e!355 () Bool)

(assert (=> b!468 (= e!357 e!355)))

(declare-fun res!539 () Bool)

(assert (=> b!468 (=> (not res!539) (not e!355))))

(declare-datatypes ((array!15 0))(
  ( (array!16 (arr!7 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!7 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!2 0))(
  ( (tuple4!3 (_1!34 (_ BitVec 32)) (_2!34 Bool) (_3!28 Bool) (_4!1 array!15)) )
))
(declare-fun lt!509 () tuple4!2)

(declare-fun lt!507 () (_ BitVec 32))

(assert (=> b!468 (= res!539 (and (not (_3!28 lt!509)) (bvsle #b00000000000000000000000000000000 lt!507) (bvslt lt!507 #b00000000000000000000000000010100)))))

(declare-datatypes ((tuple2!12 0))(
  ( (tuple2!13 (_1!35 (_ BitVec 32)) (_2!35 array!15)) )
))
(declare-fun lt!508 () tuple2!12)

(declare-fun computeModulo!0 ((_ BitVec 32) array!15) tuple4!2)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!15) array!15)

(assert (=> b!468 (= lt!509 (computeModulo!0 lt!507 (timesTwoOverPi!0 lt!507 (_1!35 lt!508) (_2!35 lt!508))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!12)

(assert (=> b!468 (= lt!508 (splitInput!0 x!199))))

(assert (=> b!468 (= lt!507 #b00000000000000000000000000000110)))

(declare-fun b!469 () Bool)

(declare-fun e!356 () Bool)

(assert (=> b!469 (= e!355 e!356)))

(declare-fun res!540 () Bool)

(assert (=> b!469 (=> res!540 e!356)))

(assert (=> b!469 (= res!540 (not (= (size!7 (_4!1 lt!509)) #b00000000000000000000000000010100)))))

(declare-fun b!470 () Bool)

(declare-fun qqInv!0 (array!15) Bool)

(assert (=> b!470 (= e!356 (not (qqInv!0 (_4!1 lt!509))))))

(assert (= (and start!497 res!541) b!468))

(assert (= (and b!468 res!539) b!469))

(assert (= (and b!469 (not res!540)) b!470))

(declare-fun m!453 () Bool)

(assert (=> b!468 m!453))

(assert (=> b!468 m!453))

(declare-fun m!455 () Bool)

(assert (=> b!468 m!455))

(declare-fun m!457 () Bool)

(assert (=> b!468 m!457))

(declare-fun m!459 () Bool)

(assert (=> b!470 m!459))

(check-sat (not b!470) (not b!468))
(check-sat)
(get-model)

(declare-fun d!387 () Bool)

(assert (=> d!387 (= (qqInv!0 (_4!1 lt!509)) (and (= (size!7 (_4!1 lt!509)) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000000)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000000) (fp #b0 #b01111111101 #b1111111111111111111111000000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000001)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000001) (fp #b0 #b01111100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000010)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000010) (fp #b0 #b01111001110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000011)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000011) (fp #b0 #b01110110110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000100)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000100) (fp #b0 #b01110011110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000101)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000101) (fp #b0 #b01110000110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000110)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000110) (fp #b0 #b01101101110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000111)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000000111) (fp #b0 #b01101010110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001000)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001000) (fp #b0 #b01100111110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001001)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001001) (fp #b0 #b01100100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001010)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001010) (fp #b0 #b01100001110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001011)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001011) (fp #b0 #b01011110110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001100)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001100) (fp #b0 #b01011011110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001101)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001101) (fp #b0 #b01011000110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001110)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001110) (fp #b0 #b01010101110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001111)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000001111) (fp #b0 #b01010010110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010000)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010000) (fp #b0 #b01001111110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010001)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010001) (fp #b0 #b01001100110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010010)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010010) (fp #b0 #b01001001110 #b1111111111111111111111100000000000000000000000000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010011)) (fp.leq (select (arr!7 (_4!1 lt!509)) #b00000000000000000000000000010011) (fp #b0 #b01000110110 #b1111111111111111111111100000000000000000000000000000))))))

(declare-fun bs!144 () Bool)

(assert (= bs!144 d!387))

(declare-fun m!461 () Bool)

(assert (=> bs!144 m!461))

(declare-fun m!463 () Bool)

(assert (=> bs!144 m!463))

(declare-fun m!465 () Bool)

(assert (=> bs!144 m!465))

(declare-fun m!467 () Bool)

(assert (=> bs!144 m!467))

(declare-fun m!469 () Bool)

(assert (=> bs!144 m!469))

(declare-fun m!471 () Bool)

(assert (=> bs!144 m!471))

(declare-fun m!473 () Bool)

(assert (=> bs!144 m!473))

(declare-fun m!475 () Bool)

(assert (=> bs!144 m!475))

(declare-fun m!477 () Bool)

(assert (=> bs!144 m!477))

(declare-fun m!479 () Bool)

(assert (=> bs!144 m!479))

(declare-fun m!481 () Bool)

(assert (=> bs!144 m!481))

(declare-fun m!483 () Bool)

(assert (=> bs!144 m!483))

(declare-fun m!485 () Bool)

(assert (=> bs!144 m!485))

(declare-fun m!487 () Bool)

(assert (=> bs!144 m!487))

(declare-fun m!489 () Bool)

(assert (=> bs!144 m!489))

(declare-fun m!491 () Bool)

(assert (=> bs!144 m!491))

(declare-fun m!493 () Bool)

(assert (=> bs!144 m!493))

(declare-fun m!495 () Bool)

(assert (=> bs!144 m!495))

(declare-fun m!497 () Bool)

(assert (=> bs!144 m!497))

(declare-fun m!499 () Bool)

(assert (=> bs!144 m!499))

(assert (=> b!470 d!387))

(declare-fun d!389 () Bool)

(declare-fun e!360 () Bool)

(assert (=> d!389 e!360))

(declare-fun res!544 () Bool)

(assert (=> d!389 (=> (not res!544) (not e!360))))

(declare-fun lt!512 () tuple4!2)

(assert (=> d!389 (= res!544 (and (bvsle #b00000000000000000000000000000000 (_1!34 lt!512)) (bvslt (_1!34 lt!512) #b00000000000000000000000000001000) (= (size!7 (_4!1 lt!512)) #b00000000000000000000000000010100)))))

(declare-fun choose!17 ((_ BitVec 32) array!15) tuple4!2)

(assert (=> d!389 (= lt!512 (choose!17 lt!507 (timesTwoOverPi!0 lt!507 (_1!35 lt!508) (_2!35 lt!508))))))

(assert (=> d!389 (and (bvsle #b00000000000000000000000000000010 lt!507) (bvslt lt!507 #b00000000000000000000000000010011))))

(assert (=> d!389 (= (computeModulo!0 lt!507 (timesTwoOverPi!0 lt!507 (_1!35 lt!508) (_2!35 lt!508))) lt!512)))

(declare-fun b!473 () Bool)

(assert (=> b!473 (= e!360 (qqInv!0 (_4!1 lt!512)))))

(assert (= (and d!389 res!544) b!473))

(assert (=> d!389 m!453))

(declare-fun m!501 () Bool)

(assert (=> d!389 m!501))

(declare-fun m!503 () Bool)

(assert (=> b!473 m!503))

(assert (=> b!468 d!389))

(declare-fun d!391 () Bool)

(declare-fun lt!515 () array!15)

(declare-fun qInv!0 (array!15) Bool)

(assert (=> d!391 (qInv!0 lt!515)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!15) array!15)

(assert (=> d!391 (= lt!515 (choose!15 lt!507 (_1!35 lt!508) (_2!35 lt!508)))))

(assert (=> d!391 (and (bvsle #b00000000000000000000000000000000 lt!507) (bvsle lt!507 #b00000000000000000000000000001111))))

(assert (=> d!391 (= (timesTwoOverPi!0 lt!507 (_1!35 lt!508) (_2!35 lt!508)) lt!515)))

(declare-fun bs!145 () Bool)

(assert (= bs!145 d!391))

(declare-fun m!505 () Bool)

(assert (=> bs!145 m!505))

(declare-fun m!507 () Bool)

(assert (=> bs!145 m!507))

(assert (=> b!468 d!391))

(declare-fun d!393 () Bool)

(declare-fun e!364 () Bool)

(assert (=> d!393 e!364))

(declare-fun res!547 () Bool)

(assert (=> d!393 (=> (not res!547) (not e!364))))

(declare-fun lt!518 () tuple2!12)

(assert (=> d!393 (= res!547 (and (bvsle #b00000000000000000000000000011000 (_1!35 lt!518)) (bvsle (_1!35 lt!518) #b00000000000000000000001111110000) (= (bvsrem (_1!35 lt!518) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!12)

(assert (=> d!393 (= lt!518 (choose!11 x!199))))

(assert (=> d!393 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!393 (= (splitInput!0 x!199) lt!518)))

(declare-fun b!476 () Bool)

(declare-fun xxInv!0 (array!15) Bool)

(assert (=> b!476 (= e!364 (xxInv!0 (_2!35 lt!518)))))

(assert (= (and d!393 res!547) b!476))

(declare-fun m!509 () Bool)

(assert (=> d!393 m!509))

(declare-fun m!511 () Bool)

(assert (=> b!476 m!511))

(assert (=> b!468 d!393))

(check-sat (not d!391) (not b!476) (not b!473) (not d!389) (not d!393))
(check-sat)
