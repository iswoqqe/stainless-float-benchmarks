; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1867 () Bool)

(assert start!1867)

(declare-fun b!10134 () Bool)

(declare-fun res!8400 () Bool)

(declare-fun e!5321 () Bool)

(assert (=> b!10134 (=> (not res!8400) (not e!5321))))

(declare-datatypes ((array!708 0))(
  ( (array!709 (arr!306 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!306 (_ BitVec 32))) )
))
(declare-fun f!58 () array!708)

(declare-fun fInv!0 (array!708) Bool)

(assert (=> b!10134 (= res!8400 (fInv!0 f!58))))

(declare-fun res!8397 () Bool)

(declare-fun e!5318 () Bool)

(assert (=> start!1867 (=> (not res!8397) (not e!5318))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1867 (= res!8397 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1867 e!5318))

(assert (=> start!1867 true))

(declare-fun xx!44 () array!708)

(declare-fun array_inv!256 (array!708) Bool)

(assert (=> start!1867 (array_inv!256 xx!44)))

(assert (=> start!1867 (array_inv!256 f!58)))

(declare-fun b!10132 () Bool)

(declare-fun res!8398 () Bool)

(assert (=> b!10132 (=> (not res!8398) (not e!5318))))

(declare-fun xxInv!0 (array!708) Bool)

(assert (=> b!10132 (= res!8398 (xxInv!0 xx!44))))

(declare-fun lt!4775 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun b!10135 () Bool)

(assert (=> b!10135 (= e!5321 (and (bvsle i!179 (bvadd lt!4775 jz!32)) (bvslt (bvsub (bvadd lt!4775 jz!32 #b00000000000000000000000000000001) i!179) #b00000000000000000000000000000000)))))

(declare-fun b!10133 () Bool)

(assert (=> b!10133 (= e!5318 e!5321)))

(declare-fun res!8399 () Bool)

(assert (=> b!10133 (=> (not res!8399) (not e!5321))))

(declare-fun lt!4774 () (_ BitVec 32))

(assert (=> b!10133 (= res!8399 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4774 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4774) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4775 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10133 (= lt!4774 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10133 (= lt!4775 (bvsub (size!306 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1867 res!8397) b!10132))

(assert (= (and b!10132 res!8398) b!10133))

(assert (= (and b!10133 res!8399) b!10134))

(assert (= (and b!10134 res!8400) b!10135))

(declare-fun m!18007 () Bool)

(assert (=> b!10134 m!18007))

(declare-fun m!18009 () Bool)

(assert (=> start!1867 m!18009))

(declare-fun m!18011 () Bool)

(assert (=> start!1867 m!18011))

(declare-fun m!18013 () Bool)

(assert (=> b!10132 m!18013))

(push 1)

(assert (not start!1867))

(assert (not b!10134))

(assert (not b!10132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

