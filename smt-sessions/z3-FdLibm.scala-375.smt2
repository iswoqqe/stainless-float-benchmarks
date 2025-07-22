; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2051 () Bool)

(assert start!2051)

(declare-fun lt!5313 () (_ BitVec 64))

(declare-fun e!5938 () (_ BitVec 64))

(assert (=> start!2051 (= lt!5313 (bvashr e!5938 #b0000000000000000000000000000000000000000000000000000000000100000))))

(declare-fun c!1232 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2051 (= c!1232 (fp.isNaN x!80))))

(assert (=> start!2051 (and (bvslt lt!5313 #b0000000000000000000000000000000010000000000000000000000000000000) (bvslt lt!5313 #b1111111111111111111111111111111110000000000000000000000000000000))))

(assert (=> start!2051 true))

(declare-fun b!10246 () Bool)

(assert (=> b!10246 (= e!5938 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10247 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10247 (= e!5938 (choose!3 x!80 x!80 false))))

(assert (= (and start!2051 c!1232) b!10246))

(assert (= (and start!2051 (not c!1232)) b!10247))

(declare-fun m!14505 () Bool)

(assert (=> b!10247 m!14505))

(check-sat (not b!10247))
(check-sat)
