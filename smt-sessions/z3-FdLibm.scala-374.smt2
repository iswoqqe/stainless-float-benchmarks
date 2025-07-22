; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2049 () Bool)

(assert start!2049)

(declare-fun c!1229 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2049 (= c!1229 (fp.isNaN x!80))))

(declare-fun e!5935 () (_ BitVec 64))

(assert (=> start!2049 (bvsge (bvashr e!5935 #b0000000000000000000000000000000000000000000000000000000000100000) #b0000000000000000000000000000000010000000000000000000000000000000)))

(assert (=> start!2049 true))

(declare-fun b!10240 () Bool)

(assert (=> b!10240 (= e!5935 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10241 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10241 (= e!5935 (choose!3 x!80 x!80 false))))

(assert (= (and start!2049 c!1229) b!10240))

(assert (= (and start!2049 (not c!1229)) b!10241))

(declare-fun m!14503 () Bool)

(assert (=> b!10241 m!14503))

(check-sat (not b!10241))
(check-sat)
