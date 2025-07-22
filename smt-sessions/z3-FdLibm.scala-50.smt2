; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475 () Bool)

(assert start!475)

(declare-fun res!496 () Bool)

(declare-fun e!311 () Bool)

(assert (=> start!475 (=> (not res!496) (not e!311))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!475 (= res!496 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!475 e!311))

(assert (=> start!475 true))

(declare-fun b!425 () Bool)

(declare-fun lt!457 () (_ BitVec 32))

(declare-datatypes ((array!5 0))(
  ( (array!6 (arr!2 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!2 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2 0))(
  ( (tuple2!3 (_1!28 (_ BitVec 32)) (_2!28 array!5)) )
))
(declare-fun lt!458 () tuple2!2)

(assert (=> b!425 (= e!311 (and (bvsle #b00000000000000000000000000000000 lt!457) (bvsle lt!457 #b00000000000000000000000000001111) (or (bvsgt #b00000000000000000000000000011000 (_1!28 lt!458)) (bvsgt (_1!28 lt!458) #b00000000000000000000001111110000) (not (= (bvsrem (_1!28 lt!458) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!2)

(assert (=> b!425 (= lt!458 (splitInput!0 x!199))))

(assert (=> b!425 (= lt!457 #b00000000000000000000000000000110)))

(assert (= (and start!475 res!496) b!425))

(declare-fun m!411 () Bool)

(assert (=> b!425 m!411))

(check-sat (not b!425))
(check-sat)
(get-model)

(declare-fun d!375 () Bool)

(declare-fun e!314 () Bool)

(assert (=> d!375 e!314))

(declare-fun res!499 () Bool)

(assert (=> d!375 (=> (not res!499) (not e!314))))

(declare-fun lt!461 () tuple2!2)

(assert (=> d!375 (= res!499 (and (bvsle #b00000000000000000000000000011000 (_1!28 lt!461)) (bvsle (_1!28 lt!461) #b00000000000000000000001111110000) (= (bvsrem (_1!28 lt!461) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!2)

(assert (=> d!375 (= lt!461 (choose!11 x!199))))

(assert (=> d!375 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!375 (= (splitInput!0 x!199) lt!461)))

(declare-fun b!428 () Bool)

(declare-fun xxInv!0 (array!5) Bool)

(assert (=> b!428 (= e!314 (xxInv!0 (_2!28 lt!461)))))

(assert (= (and d!375 res!499) b!428))

(declare-fun m!413 () Bool)

(assert (=> d!375 m!413))

(declare-fun m!415 () Bool)

(assert (=> b!428 m!415))

(assert (=> b!425 d!375))

(check-sat (not b!428) (not d!375))
(check-sat)
