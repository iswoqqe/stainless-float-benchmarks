; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2079 () Bool)

(assert start!2079)

(declare-fun c!1247 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2079 (= c!1247 (fp.isNaN x!80))))

(declare-fun e!6009 () (_ BitVec 64))

(assert (=> start!2079 (bvsge (bvashr e!6009 #b0000000000000000000000000000000000000000000000000000000000100000) #b0000000000000000000000000000000010000000000000000000000000000000)))

(assert (=> start!2079 true))

(declare-fun b!10614 () Bool)

(assert (=> b!10614 (= e!6009 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10615 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10615 (= e!6009 (choose!3 x!80 x!80 false))))

(assert (= (and start!2079 c!1247) b!10614))

(assert (= (and start!2079 (not c!1247)) b!10615))

(declare-fun m!16329 () Bool)

(assert (=> b!10615 m!16329))

(check-sat (not b!10615))
(check-sat)
