; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2047 () Bool)

(assert start!2047)

(declare-fun lt!5310 () (_ BitVec 64))

(declare-fun e!5932 () (_ BitVec 64))

(assert (=> start!2047 (= lt!5310 e!5932)))

(declare-fun c!1226 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2047 (= c!1226 (fp.isNaN x!80))))

(assert (=> start!2047 false))

(assert (=> start!2047 true))

(declare-fun b!10234 () Bool)

(assert (=> b!10234 (= e!5932 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10235 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10235 (= e!5932 (choose!3 x!80 x!80 false))))

(assert (= (and start!2047 c!1226) b!10234))

(assert (= (and start!2047 (not c!1226)) b!10235))

(declare-fun m!14501 () Bool)

(assert (=> b!10235 m!14501))

(check-sat (not b!10235))
(check-sat)
