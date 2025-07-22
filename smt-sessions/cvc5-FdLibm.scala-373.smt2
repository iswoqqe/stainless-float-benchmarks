; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2231 () Bool)

(assert start!2231)

(declare-fun lt!5600 () (_ BitVec 64))

(declare-fun e!6259 () (_ BitVec 64))

(assert (=> start!2231 (= lt!5600 e!6259)))

(declare-fun c!1304 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2231 (= c!1304 (fp.isNaN x!80))))

(assert (=> start!2231 false))

(assert (=> start!2231 true))

(declare-fun b!11478 () Bool)

(assert (=> b!11478 (= e!6259 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11479 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11479 (= e!6259 (choose!3 x!80 x!80 false))))

(assert (= (and start!2231 c!1304) b!11478))

(assert (= (and start!2231 (not c!1304)) b!11479))

(declare-fun m!19171 () Bool)

(assert (=> b!11479 m!19171))

(push 1)

(assert (not b!11479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

