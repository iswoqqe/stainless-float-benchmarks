; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1697 () Bool)

(assert start!1697)

(declare-fun res!7254 () Bool)

(declare-fun e!4943 () Bool)

(assert (=> start!1697 (=> (not res!7254) (not e!4943))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1697 (= res!7254 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1697 e!4943))

(assert (=> start!1697 true))

(declare-datatypes ((array!681 0))(
  ( (array!682 (arr!300 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!300 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!681)

(declare-fun array_inv!250 (array!681) Bool)

(assert (=> start!1697 (array_inv!250 xx!44)))

(declare-fun b!8863 () Bool)

(declare-fun res!7255 () Bool)

(assert (=> b!8863 (=> (not res!7255) (not e!4943))))

(declare-fun xxInv!0 (array!681) Bool)

(assert (=> b!8863 (= res!7255 (xxInv!0 xx!44))))

(declare-fun b!8864 () Bool)

(declare-fun lt!4451 () (_ BitVec 32))

(declare-fun lt!4452 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(assert (=> b!8864 (= e!4943 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4451 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4451) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (= (bvand lt!4452 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4452 #b10000000000000000000000000000000) (bvand (bvadd lt!4452 jz!32) #b10000000000000000000000000000000)))))))

(assert (=> b!8864 (= lt!4451 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!8864 (= lt!4452 (bvsub (size!300 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1697 res!7254) b!8863))

(assert (= (and b!8863 res!7255) b!8864))

(declare-fun m!13343 () Bool)

(assert (=> start!1697 m!13343))

(declare-fun m!13345 () Bool)

(assert (=> b!8863 m!13345))

(check-sat (not start!1697) (not b!8863))
(check-sat)
(get-model)

(declare-fun d!3803 () Bool)

(assert (=> d!3803 (= (array_inv!250 xx!44) (bvsge (size!300 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1697 d!3803))

(declare-fun d!3805 () Bool)

(declare-fun res!7258 () Bool)

(declare-fun e!4946 () Bool)

(assert (=> d!3805 (=> (not res!7258) (not e!4946))))

(assert (=> d!3805 (= res!7258 (= (size!300 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!3805 (= (xxInv!0 xx!44) e!4946)))

(declare-fun b!8867 () Bool)

(declare-fun lambda!457 () Int)

(declare-fun all5!0 (array!681 Int) Bool)

(assert (=> b!8867 (= e!4946 (all5!0 xx!44 lambda!457))))

(assert (= (and d!3805 res!7258) b!8867))

(declare-fun m!13347 () Bool)

(assert (=> b!8867 m!13347))

(assert (=> b!8863 d!3805))

(check-sat (not b!8867))
(check-sat)
