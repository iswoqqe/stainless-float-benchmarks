; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2045 () Bool)

(assert start!2045)

(declare-fun lt!5307 () (_ BitVec 64))

(declare-fun e!5929 () (_ BitVec 64))

(assert (=> start!2045 (= lt!5307 e!5929)))

(declare-fun c!1223 () Bool)

(declare-fun x!83 () (_ FloatingPoint 11 53))

(assert (=> start!2045 (= c!1223 (fp.isNaN x!83))))

(assert (=> start!2045 false))

(assert (=> start!2045 true))

(declare-fun b!10228 () Bool)

(assert (=> b!10228 (= e!5929 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10229 () Bool)

(declare-fun high!3 () (_ BitVec 32))

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10229 (= e!5929 (choose!0 x!83 high!3 x!83 false))))

(assert (= (and start!2045 c!1223) b!10228))

(assert (= (and start!2045 (not c!1223)) b!10229))

(declare-fun m!14499 () Bool)

(assert (=> b!10229 m!14499))

(check-sat (not b!10229))
(check-sat)
