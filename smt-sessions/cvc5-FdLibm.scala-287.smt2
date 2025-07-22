; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1865 () Bool)

(assert start!1865)

(declare-fun b!10121 () Bool)

(declare-fun e!5308 () Bool)

(declare-fun e!5307 () Bool)

(assert (=> b!10121 (= e!5308 e!5307)))

(declare-fun res!8387 () Bool)

(assert (=> b!10121 (=> (not res!8387) (not e!5307))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4768 () (_ BitVec 32))

(declare-fun lt!4769 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(assert (=> b!10121 (= res!8387 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4768 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4768) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4769 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10121 (= lt!4768 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-datatypes ((array!706 0))(
  ( (array!707 (arr!305 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!305 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!706)

(assert (=> b!10121 (= lt!4769 (bvsub (size!305 xx!44) #b00000000000000000000000000000001))))

(declare-fun res!8385 () Bool)

(assert (=> start!1865 (=> (not res!8385) (not e!5308))))

(assert (=> start!1865 (= res!8385 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1865 e!5308))

(assert (=> start!1865 true))

(declare-fun array_inv!255 (array!706) Bool)

(assert (=> start!1865 (array_inv!255 xx!44)))

(declare-fun f!58 () array!706)

(assert (=> start!1865 (array_inv!255 f!58)))

(declare-fun b!10120 () Bool)

(declare-fun res!8388 () Bool)

(assert (=> b!10120 (=> (not res!8388) (not e!5308))))

(declare-fun xxInv!0 (array!706) Bool)

(assert (=> b!10120 (= res!8388 (xxInv!0 xx!44))))

(declare-fun b!10123 () Bool)

(assert (=> b!10123 (= e!5307 (and (bvsle i!179 (bvadd lt!4769 jz!32)) (let ((lhs!50 (bvadd lt!4769 jz!32 #b00000000000000000000000000000001))) (and (not (= (bvand lhs!50 #b10000000000000000000000000000000) (bvand i!179 #b10000000000000000000000000000000))) (not (= (bvand lhs!50 #b10000000000000000000000000000000) (bvand (bvsub lhs!50 i!179) #b10000000000000000000000000000000)))))))))

(declare-fun b!10122 () Bool)

(declare-fun res!8386 () Bool)

(assert (=> b!10122 (=> (not res!8386) (not e!5307))))

(declare-fun fInv!0 (array!706) Bool)

(assert (=> b!10122 (= res!8386 (fInv!0 f!58))))

(assert (= (and start!1865 res!8385) b!10120))

(assert (= (and b!10120 res!8388) b!10121))

(assert (= (and b!10121 res!8387) b!10122))

(assert (= (and b!10122 res!8386) b!10123))

(declare-fun m!17999 () Bool)

(assert (=> start!1865 m!17999))

(declare-fun m!18001 () Bool)

(assert (=> start!1865 m!18001))

(declare-fun m!18003 () Bool)

(assert (=> b!10120 m!18003))

(declare-fun m!18005 () Bool)

(assert (=> b!10122 m!18005))

(push 1)

(assert (not start!1865))

(assert (not b!10122))

(assert (not b!10120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

