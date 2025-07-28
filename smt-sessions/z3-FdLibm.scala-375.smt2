; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2081 () Bool)

(assert start!2081)

(declare-fun lt!5385 () (_ BitVec 64))

(declare-fun e!6012 () (_ BitVec 64))

(assert (=> start!2081 (= lt!5385 (bvashr e!6012 #b0000000000000000000000000000000000000000000000000000000000100000))))

(declare-fun c!1250 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2081 (= c!1250 (fp.isNaN x!80))))

(assert (=> start!2081 (and (bvslt lt!5385 #b0000000000000000000000000000000010000000000000000000000000000000) (bvslt lt!5385 #b1111111111111111111111111111111110000000000000000000000000000000))))

(assert (=> start!2081 true))

(declare-fun b!10620 () Bool)

(assert (=> b!10620 (= e!6012 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10621 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10621 (= e!6012 (choose!3 x!80 x!80 false))))

(assert (= (and start!2081 c!1250) b!10620))

(assert (= (and start!2081 (not c!1250)) b!10621))

(declare-fun m!16331 () Bool)

(assert (=> b!10621 m!16331))

(check-sat (not b!10621))
(check-sat)
