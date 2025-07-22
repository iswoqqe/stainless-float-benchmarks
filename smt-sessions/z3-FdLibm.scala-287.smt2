; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1715 () Bool)

(assert start!1715)

(declare-fun b!8922 () Bool)

(declare-fun e!5001 () Bool)

(declare-fun e!5002 () Bool)

(assert (=> b!8922 (= e!5001 e!5002)))

(declare-fun res!7314 () Bool)

(assert (=> b!8922 (=> (not res!7314) (not e!5002))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4479 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun lt!4478 () (_ BitVec 32))

(assert (=> b!8922 (= res!7314 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4479 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4479) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4478 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!8922 (= lt!4479 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-datatypes ((array!693 0))(
  ( (array!694 (arr!305 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!305 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!693)

(assert (=> b!8922 (= lt!4478 (bvsub (size!305 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!8921 () Bool)

(declare-fun res!7315 () Bool)

(assert (=> b!8921 (=> (not res!7315) (not e!5001))))

(declare-fun xxInv!0 (array!693) Bool)

(assert (=> b!8921 (= res!7315 (xxInv!0 xx!44))))

(declare-fun b!8924 () Bool)

(assert (=> b!8924 (= e!5002 (and (bvsle i!179 (bvadd lt!4478 jz!32)) (let ((lhs!50 (bvadd lt!4478 jz!32 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!50 #b10000000000000000000000000000000) (bvand i!179 #b10000000000000000000000000000000))) (not (= (bvand lhs!50 #b10000000000000000000000000000000) (bvand (bvsub lhs!50 i!179) #b10000000000000000000000000000000)))))))))

(declare-fun b!8923 () Bool)

(declare-fun res!7313 () Bool)

(assert (=> b!8923 (=> (not res!7313) (not e!5002))))

(declare-fun f!58 () array!693)

(declare-fun fInv!0 (array!693) Bool)

(assert (=> b!8923 (= res!7313 (fInv!0 f!58))))

(declare-fun res!7312 () Bool)

(assert (=> start!1715 (=> (not res!7312) (not e!5001))))

(assert (=> start!1715 (= res!7312 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1715 e!5001))

(assert (=> start!1715 true))

(declare-fun array_inv!255 (array!693) Bool)

(assert (=> start!1715 (array_inv!255 xx!44)))

(assert (=> start!1715 (array_inv!255 f!58)))

(assert (= (and start!1715 res!7312) b!8921))

(assert (= (and b!8921 res!7315) b!8922))

(assert (= (and b!8922 res!7314) b!8923))

(assert (= (and b!8923 res!7313) b!8924))

(declare-fun m!13379 () Bool)

(assert (=> b!8921 m!13379))

(declare-fun m!13381 () Bool)

(assert (=> b!8923 m!13381))

(declare-fun m!13383 () Bool)

(assert (=> start!1715 m!13383))

(declare-fun m!13385 () Bool)

(assert (=> start!1715 m!13385))

(check-sat (not b!8923) (not start!1715) (not b!8921))
(check-sat)
