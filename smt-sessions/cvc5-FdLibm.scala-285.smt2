; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1861 () Bool)

(assert start!1861)

(declare-fun res!8364 () Bool)

(declare-fun e!5285 () Bool)

(assert (=> start!1861 (=> (not res!8364) (not e!5285))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1861 (= res!8364 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1861 e!5285))

(assert (=> start!1861 true))

(declare-datatypes ((array!702 0))(
  ( (array!703 (arr!303 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!303 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!702)

(declare-fun array_inv!253 (array!702) Bool)

(assert (=> start!1861 (array_inv!253 xx!44)))

(declare-fun f!58 () array!702)

(assert (=> start!1861 (array_inv!253 f!58)))

(declare-fun b!10097 () Bool)

(declare-fun e!5284 () Bool)

(assert (=> b!10097 (= e!5285 e!5284)))

(declare-fun res!8362 () Bool)

(assert (=> b!10097 (=> (not res!8362) (not e!5284))))

(declare-fun lt!4757 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4756 () (_ BitVec 32))

(assert (=> b!10097 (= res!8362 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4757 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4757) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4756 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10097 (= lt!4757 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10097 (= lt!4756 (bvsub (size!303 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10099 () Bool)

(assert (=> b!10099 (= e!5284 (and (bvsle i!179 (bvadd lt!4756 jz!32)) (= (bvand lt!4756 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4756 #b10000000000000000000000000000000) (bvand (bvadd lt!4756 jz!32) #b10000000000000000000000000000000)))))))

(declare-fun b!10098 () Bool)

(declare-fun res!8361 () Bool)

(assert (=> b!10098 (=> (not res!8361) (not e!5284))))

(declare-fun fInv!0 (array!702) Bool)

(assert (=> b!10098 (= res!8361 (fInv!0 f!58))))

(declare-fun b!10096 () Bool)

(declare-fun res!8363 () Bool)

(assert (=> b!10096 (=> (not res!8363) (not e!5285))))

(declare-fun xxInv!0 (array!702) Bool)

(assert (=> b!10096 (= res!8363 (xxInv!0 xx!44))))

(assert (= (and start!1861 res!8364) b!10096))

(assert (= (and b!10096 res!8363) b!10097))

(assert (= (and b!10097 res!8362) b!10098))

(assert (= (and b!10098 res!8361) b!10099))

(declare-fun m!17983 () Bool)

(assert (=> start!1861 m!17983))

(declare-fun m!17985 () Bool)

(assert (=> start!1861 m!17985))

(declare-fun m!17987 () Bool)

(assert (=> b!10098 m!17987))

(declare-fun m!17989 () Bool)

(assert (=> b!10096 m!17989))

(push 1)

(assert (not start!1861))

(assert (not b!10098))

(assert (not b!10096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

