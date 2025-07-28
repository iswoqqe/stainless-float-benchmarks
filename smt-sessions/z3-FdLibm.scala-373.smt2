; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2077 () Bool)

(assert start!2077)

(declare-fun lt!5382 () (_ BitVec 64))

(declare-fun e!6006 () (_ BitVec 64))

(assert (=> start!2077 (= lt!5382 e!6006)))

(declare-fun c!1244 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2077 (= c!1244 (fp.isNaN x!80))))

(assert (=> start!2077 false))

(assert (=> start!2077 true))

(declare-fun b!10608 () Bool)

(assert (=> b!10608 (= e!6006 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!10609 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!10609 (= e!6006 (choose!3 x!80 x!80 false))))

(assert (= (and start!2077 c!1244) b!10608))

(assert (= (and start!2077 (not c!1244)) b!10609))

(declare-fun m!16327 () Bool)

(assert (=> b!10609 m!16327))

(check-sat (not b!10609))
(check-sat)
