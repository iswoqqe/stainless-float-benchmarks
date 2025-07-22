; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2233 () Bool)

(assert start!2233)

(declare-fun c!1307 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2233 (= c!1307 (fp.isNaN x!80))))

(declare-fun e!6262 () (_ BitVec 64))

(assert (=> start!2233 (bvsge (bvashr e!6262 #b0000000000000000000000000000000000000000000000000000000000100000) #b0000000000000000000000000000000010000000000000000000000000000000)))

(assert (=> start!2233 true))

(declare-fun b!11484 () Bool)

(assert (=> b!11484 (= e!6262 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11485 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11485 (= e!6262 (choose!3 x!80 x!80 false))))

(assert (= (and start!2233 c!1307) b!11484))

(assert (= (and start!2233 (not c!1307)) b!11485))

(declare-fun m!19173 () Bool)

(assert (=> b!11485 m!19173))

(push 1)

(assert (not b!11485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

