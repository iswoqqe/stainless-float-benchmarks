; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479 () Bool)

(assert start!479)

(declare-fun res!505 () Bool)

(declare-fun e!319 () Bool)

(assert (=> start!479 (=> (not res!505) (not e!319))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!479 (= res!505 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!479 e!319))

(assert (=> start!479 true))

(declare-fun b!433 () Bool)

(declare-fun e!320 () Bool)

(assert (=> b!433 (= e!319 e!320)))

(declare-fun res!504 () Bool)

(assert (=> b!433 (=> (not res!504) (not e!320))))

(declare-fun lt!467 () (_ BitVec 32))

(declare-datatypes ((array!7 0))(
  ( (array!8 (arr!3 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!3 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!4 0))(
  ( (tuple2!5 (_1!29 (_ BitVec 32)) (_2!29 array!7)) )
))
(declare-fun lt!466 () tuple2!4)

(assert (=> b!433 (= res!504 (and (bvsle #b00000000000000000000000000000000 lt!467) (bvsle lt!467 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 (_1!29 lt!466)) (bvsle (_1!29 lt!466) #b00000000000000000000001111110000) (= (bvsrem (_1!29 lt!466) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!4)

(assert (=> b!433 (= lt!466 (splitInput!0 x!199))))

(assert (=> b!433 (= lt!467 #b00000000000000000000000000000110)))

(declare-fun b!434 () Bool)

(declare-fun xxInv!0 (array!7) Bool)

(assert (=> b!434 (= e!320 (not (xxInv!0 (_2!29 lt!466))))))

(assert (= (and start!479 res!505) b!433))

(assert (= (and b!433 res!504) b!434))

(declare-fun m!417 () Bool)

(assert (=> b!433 m!417))

(declare-fun m!419 () Bool)

(assert (=> b!434 m!419))

(check-sat (not b!433) (not b!434))
(check-sat)
(get-model)

(declare-fun d!377 () Bool)

(declare-fun e!323 () Bool)

(assert (=> d!377 e!323))

(declare-fun res!508 () Bool)

(assert (=> d!377 (=> (not res!508) (not e!323))))

(declare-fun lt!470 () tuple2!4)

(assert (=> d!377 (= res!508 (and (bvsle #b00000000000000000000000000011000 (_1!29 lt!470)) (bvsle (_1!29 lt!470) #b00000000000000000000001111110000) (= (bvsrem (_1!29 lt!470) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!4)

(assert (=> d!377 (= lt!470 (choose!11 x!199))))

(assert (=> d!377 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!377 (= (splitInput!0 x!199) lt!470)))

(declare-fun b!437 () Bool)

(assert (=> b!437 (= e!323 (xxInv!0 (_2!29 lt!470)))))

(assert (= (and d!377 res!508) b!437))

(declare-fun m!421 () Bool)

(assert (=> d!377 m!421))

(declare-fun m!423 () Bool)

(assert (=> b!437 m!423))

(assert (=> b!433 d!377))

(declare-fun d!379 () Bool)

(declare-fun res!511 () Bool)

(declare-fun e!326 () Bool)

(assert (=> d!379 (=> (not res!511) (not e!326))))

(assert (=> d!379 (= res!511 (= (size!3 (_2!29 lt!466)) #b00000000000000000000000000000101))))

(assert (=> d!379 (= (xxInv!0 (_2!29 lt!466)) e!326)))

(declare-fun b!440 () Bool)

(declare-fun lambda!2 () Int)

(declare-fun all5!0 (array!7 Int) Bool)

(assert (=> b!440 (= e!326 (all5!0 (_2!29 lt!466) lambda!2))))

(assert (= (and d!379 res!511) b!440))

(declare-fun m!425 () Bool)

(assert (=> b!440 m!425))

(assert (=> b!434 d!379))

(check-sat (not b!437) (not d!377) (not b!440))
(check-sat)
