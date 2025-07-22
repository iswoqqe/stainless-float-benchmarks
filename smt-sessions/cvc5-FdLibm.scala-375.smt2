; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2235 () Bool)

(assert start!2235)

(declare-fun lt!5603 () (_ BitVec 64))

(declare-fun e!6265 () (_ BitVec 64))

(assert (=> start!2235 (= lt!5603 (bvashr e!6265 #b0000000000000000000000000000000000000000000000000000000000100000))))

(declare-fun c!1310 () Bool)

(declare-fun x!80 () (_ FloatingPoint 11 53))

(assert (=> start!2235 (= c!1310 (fp.isNaN x!80))))

(assert (=> start!2235 (and (bvslt lt!5603 #b0000000000000000000000000000000010000000000000000000000000000000) (bvslt lt!5603 #b1111111111111111111111111111111110000000000000000000000000000000))))

(assert (=> start!2235 true))

(declare-fun b!11490 () Bool)

(assert (=> b!11490 (= e!6265 #b0111111111111000000000000000000000000000000000000000000000000000)))

(declare-fun b!11491 () Bool)

(declare-fun choose!3 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) Bool) (_ BitVec 64))

(assert (=> b!11491 (= e!6265 (choose!3 x!80 x!80 false))))

(assert (= (and start!2235 c!1310) b!11490))

(assert (= (and start!2235 (not c!1310)) b!11491))

(declare-fun m!19175 () Bool)

(assert (=> b!11491 m!19175))

(push 1)

(assert (not b!11491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

