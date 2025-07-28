; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2075 () Bool)

(assert start!2075)

(declare-fun lt!5379 () (_ BitVec 64))

(declare-fun e!6003 () (_ BitVec 64))

(assert (=> start!2075 (= lt!5379 e!6003)))

(declare-fun c!1241 () Bool)

(declare-fun x!83 () (_ FloatingPoint 11 53))

(assert (=> start!2075 (= c!1241 (fp.isNaN x!83))))

(assert (=> start!2075 false))

(assert (=> start!2075 true))

(declare-fun b!10602 () Bool)

(assert (=> b!10602 (= e!6003 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10603 () Bool)

(declare-fun high!3 () (_ BitVec 32))

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10603 (= e!6003 (choose!0 x!83 high!3 x!83 false))))

(assert (= (and start!2075 c!1241) b!10602))

(assert (= (and start!2075 (not c!1241)) b!10603))

(declare-fun m!16325 () Bool)

(assert (=> b!10603 m!16325))

(check-sat (not b!10603))
(check-sat)
