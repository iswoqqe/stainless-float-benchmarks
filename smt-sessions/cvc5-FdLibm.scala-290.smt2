; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1871 () Bool)

(assert start!1871)

(declare-fun b!10159 () Bool)

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4791 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun lt!4793 () (_ BitVec 32))

(declare-fun e!5342 () Bool)

(assert (=> b!10159 (= e!5342 (and (bvsle i!179 (bvadd lt!4793 jz!32)) (let ((lhs!51 (bvsub lt!4791 lt!4793))) (and (= (bvand lhs!51 #b10000000000000000000000000000000) (bvand i!179 #b10000000000000000000000000000000)) (not (= (bvand lhs!51 #b10000000000000000000000000000000) (bvand (bvadd lhs!51 i!179) #b10000000000000000000000000000000)))))))))

(declare-fun b!10157 () Bool)

(declare-fun e!5345 () Bool)

(assert (=> b!10157 (= e!5345 e!5342)))

(declare-fun res!8424 () Bool)

(assert (=> b!10157 (=> (not res!8424) (not e!5342))))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> b!10157 (= res!8424 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4791 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4793 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4792 () (_ BitVec 32))

(assert (=> b!10157 (= lt!4791 (ite (bvslt lt!4792 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4792))))

(assert (=> b!10157 (= lt!4792 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-datatypes ((array!712 0))(
  ( (array!713 (arr!308 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!308 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!712)

(assert (=> b!10157 (= lt!4793 (bvsub (size!308 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10156 () Bool)

(declare-fun res!8423 () Bool)

(assert (=> b!10156 (=> (not res!8423) (not e!5345))))

(declare-fun xxInv!0 (array!712) Bool)

(assert (=> b!10156 (= res!8423 (xxInv!0 xx!44))))

(declare-fun res!8422 () Bool)

(assert (=> start!1871 (=> (not res!8422) (not e!5345))))

(assert (=> start!1871 (= res!8422 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1871 e!5345))

(assert (=> start!1871 true))

(declare-fun array_inv!258 (array!712) Bool)

(assert (=> start!1871 (array_inv!258 xx!44)))

(declare-fun f!58 () array!712)

(assert (=> start!1871 (array_inv!258 f!58)))

(declare-fun b!10158 () Bool)

(declare-fun res!8421 () Bool)

(assert (=> b!10158 (=> (not res!8421) (not e!5342))))

(declare-fun fInv!0 (array!712) Bool)

(assert (=> b!10158 (= res!8421 (fInv!0 f!58))))

(assert (= (and start!1871 res!8422) b!10156))

(assert (= (and b!10156 res!8423) b!10157))

(assert (= (and b!10157 res!8424) b!10158))

(assert (= (and b!10158 res!8421) b!10159))

(declare-fun m!18023 () Bool)

(assert (=> b!10156 m!18023))

(declare-fun m!18025 () Bool)

(assert (=> start!1871 m!18025))

(declare-fun m!18027 () Bool)

(assert (=> start!1871 m!18027))

(declare-fun m!18029 () Bool)

(assert (=> b!10158 m!18029))

(push 1)

(assert (not b!10158))

(assert (not start!1871))

(assert (not b!10156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

