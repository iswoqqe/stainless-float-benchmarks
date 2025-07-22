; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2229 () Bool)

(assert start!2229)

(declare-fun lt!5597 () (_ BitVec 64))

(declare-fun e!6256 () (_ BitVec 64))

(assert (=> start!2229 (= lt!5597 e!6256)))

(declare-fun c!1301 () Bool)

(declare-fun x!83 () (_ FloatingPoint 11 53))

(assert (=> start!2229 (= c!1301 (fp.isNaN x!83))))

(assert (=> start!2229 false))

(assert (=> start!2229 true))

(declare-fun b!11472 () Bool)

(assert (=> b!11472 (= e!6256 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11473 () Bool)

(declare-fun high!3 () (_ BitVec 32))

(declare-fun choose!0 ((_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11473 (= e!6256 (choose!0 x!83 high!3 x!83 false))))

(assert (= (and start!2229 c!1301) b!11472))

(assert (= (and start!2229 (not c!1301)) b!11473))

(declare-fun m!19169 () Bool)

(assert (=> b!11473 m!19169))

(push 1)

(assert (not b!11473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

