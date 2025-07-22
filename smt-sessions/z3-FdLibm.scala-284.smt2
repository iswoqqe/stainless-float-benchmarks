; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1709 () Bool)

(assert start!1709)

(declare-fun b!8887 () Bool)

(declare-fun res!7278 () Bool)

(declare-fun e!4964 () Bool)

(assert (=> b!8887 (=> (not res!7278) (not e!4964))))

(declare-datatypes ((array!687 0))(
  ( (array!688 (arr!302 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!302 (_ BitVec 32))) )
))
(declare-fun f!58 () array!687)

(declare-fun fInv!0 (array!687) Bool)

(assert (=> b!8887 (= res!7278 (fInv!0 f!58))))

(declare-fun b!8886 () Bool)

(declare-fun e!4967 () Bool)

(assert (=> b!8886 (= e!4967 e!4964)))

(declare-fun res!7279 () Bool)

(assert (=> b!8886 (=> (not res!7279) (not e!4964))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4460 () (_ BitVec 32))

(declare-fun lt!4461 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(assert (=> b!8886 (= res!7279 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4460 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4460) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4461 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!8886 (= lt!4460 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun xx!44 () array!687)

(assert (=> b!8886 (= lt!4461 (bvsub (size!302 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!8885 () Bool)

(declare-fun res!7277 () Bool)

(assert (=> b!8885 (=> (not res!7277) (not e!4967))))

(declare-fun xxInv!0 (array!687) Bool)

(assert (=> b!8885 (= res!7277 (xxInv!0 xx!44))))

(declare-fun res!7276 () Bool)

(assert (=> start!1709 (=> (not res!7276) (not e!4967))))

(assert (=> start!1709 (= res!7276 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1709 e!4967))

(assert (=> start!1709 true))

(declare-fun array_inv!252 (array!687) Bool)

(assert (=> start!1709 (array_inv!252 xx!44)))

(assert (=> start!1709 (array_inv!252 f!58)))

(declare-fun b!8888 () Bool)

(assert (=> b!8888 (= e!4964 (and (= (bvand lt!4461 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4461 #b10000000000000000000000000000000) (bvand (bvadd lt!4461 jz!32) #b10000000000000000000000000000000)))))))

(assert (= (and start!1709 res!7276) b!8885))

(assert (= (and b!8885 res!7277) b!8886))

(assert (= (and b!8886 res!7279) b!8887))

(assert (= (and b!8887 res!7278) b!8888))

(declare-fun m!13355 () Bool)

(assert (=> b!8887 m!13355))

(declare-fun m!13357 () Bool)

(assert (=> b!8885 m!13357))

(declare-fun m!13359 () Bool)

(assert (=> start!1709 m!13359))

(declare-fun m!13361 () Bool)

(assert (=> start!1709 m!13361))

(check-sat (not start!1709) (not b!8885) (not b!8887))
(check-sat)
