; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1859 () Bool)

(assert start!1859)

(declare-fun b!10086 () Bool)

(declare-fun res!8352 () Bool)

(declare-fun e!5270 () Bool)

(assert (=> b!10086 (=> (not res!8352) (not e!5270))))

(declare-datatypes ((array!700 0))(
  ( (array!701 (arr!302 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!302 (_ BitVec 32))) )
))
(declare-fun f!58 () array!700)

(declare-fun fInv!0 (array!700) Bool)

(assert (=> b!10086 (= res!8352 (fInv!0 f!58))))

(declare-fun res!8351 () Bool)

(declare-fun e!5271 () Bool)

(assert (=> start!1859 (=> (not res!8351) (not e!5271))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1859 (= res!8351 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1859 e!5271))

(assert (=> start!1859 true))

(declare-fun xx!44 () array!700)

(declare-fun array_inv!252 (array!700) Bool)

(assert (=> start!1859 (array_inv!252 xx!44)))

(assert (=> start!1859 (array_inv!252 f!58)))

(declare-fun b!10087 () Bool)

(declare-fun lt!4750 () (_ BitVec 32))

(assert (=> b!10087 (= e!5270 (and (= (bvand lt!4750 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4750 #b10000000000000000000000000000000) (bvand (bvadd lt!4750 jz!32) #b10000000000000000000000000000000)))))))

(declare-fun b!10084 () Bool)

(declare-fun res!8349 () Bool)

(assert (=> b!10084 (=> (not res!8349) (not e!5271))))

(declare-fun xxInv!0 (array!700) Bool)

(assert (=> b!10084 (= res!8349 (xxInv!0 xx!44))))

(declare-fun b!10085 () Bool)

(assert (=> b!10085 (= e!5271 e!5270)))

(declare-fun res!8350 () Bool)

(assert (=> b!10085 (=> (not res!8350) (not e!5270))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4751 () (_ BitVec 32))

(assert (=> b!10085 (= res!8350 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4751 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4751) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4750 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10085 (= lt!4751 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10085 (= lt!4750 (bvsub (size!302 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1859 res!8351) b!10084))

(assert (= (and b!10084 res!8349) b!10085))

(assert (= (and b!10085 res!8350) b!10086))

(assert (= (and b!10086 res!8352) b!10087))

(declare-fun m!17975 () Bool)

(assert (=> b!10086 m!17975))

(declare-fun m!17977 () Bool)

(assert (=> start!1859 m!17977))

(declare-fun m!17979 () Bool)

(assert (=> start!1859 m!17979))

(declare-fun m!17981 () Bool)

(assert (=> b!10084 m!17981))

(push 1)

(assert (not b!10084))

(assert (not start!1859))

(assert (not b!10086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

