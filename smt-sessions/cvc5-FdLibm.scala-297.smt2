; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1891 () Bool)

(assert start!1891)

(declare-fun b!10246 () Bool)

(declare-fun res!8511 () Bool)

(declare-fun e!5435 () Bool)

(assert (=> b!10246 (=> (not res!8511) (not e!5435))))

(declare-datatypes ((array!727 0))(
  ( (array!728 (arr!315 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!315 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!727)

(declare-fun xxInv!0 (array!727) Bool)

(assert (=> b!10246 (= res!8511 (xxInv!0 xx!44))))

(declare-fun res!8514 () Bool)

(assert (=> start!1891 (=> (not res!8514) (not e!5435))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1891 (= res!8514 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1891 e!5435))

(assert (=> start!1891 true))

(declare-fun array_inv!265 (array!727) Bool)

(assert (=> start!1891 (array_inv!265 xx!44)))

(declare-fun f!58 () array!727)

(assert (=> start!1891 (array_inv!265 f!58)))

(declare-fun b!10247 () Bool)

(declare-fun e!5434 () Bool)

(assert (=> b!10247 (= e!5435 e!5434)))

(declare-fun res!8513 () Bool)

(assert (=> b!10247 (=> (not res!8513) (not e!5434))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4847 () (_ BitVec 32))

(declare-fun lt!4846 () (_ BitVec 32))

(assert (=> b!10247 (= res!8513 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4846 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4846) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4847 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10247 (= lt!4846 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10247 (= lt!4847 (bvsub (size!315 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10248 () Bool)

(declare-fun res!8512 () Bool)

(assert (=> b!10248 (=> (not res!8512) (not e!5434))))

(declare-fun fInv!0 (array!727) Bool)

(assert (=> b!10248 (= res!8512 (fInv!0 f!58))))

(declare-fun b!10249 () Bool)

(assert (=> b!10249 (= e!5434 (and (bvsle i!179 (bvadd lt!4847 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsle i!181 (bvadd lt!4847 jz!32)) (bvsge (bvsub (bvadd (bvsub (size!315 xx!44) #b00000000000000000000000000000001) jz!32 #b00000000000000000000000000000001) i!181) (bvsub (bvadd lt!4847 jz!32 #b00000000000000000000000000000001) i!179))))))))

(assert (= (and start!1891 res!8514) b!10246))

(assert (= (and b!10246 res!8511) b!10247))

(assert (= (and b!10247 res!8513) b!10248))

(assert (= (and b!10248 res!8512) b!10249))

(declare-fun m!18083 () Bool)

(assert (=> b!10246 m!18083))

(declare-fun m!18085 () Bool)

(assert (=> start!1891 m!18085))

(declare-fun m!18087 () Bool)

(assert (=> start!1891 m!18087))

(declare-fun m!18089 () Bool)

(assert (=> b!10248 m!18089))

(push 1)

(assert (not b!10248))

(assert (not b!10246))

(assert (not start!1891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

