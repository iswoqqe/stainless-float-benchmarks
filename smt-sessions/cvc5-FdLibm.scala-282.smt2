; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1847 () Bool)

(assert start!1847)

(declare-fun res!8327 () Bool)

(declare-fun e!5248 () Bool)

(assert (=> start!1847 (=> (not res!8327) (not e!5248))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1847 (= res!8327 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1847 e!5248))

(assert (=> start!1847 true))

(declare-datatypes ((array!694 0))(
  ( (array!695 (arr!300 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!300 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!694)

(declare-fun array_inv!250 (array!694) Bool)

(assert (=> start!1847 (array_inv!250 xx!44)))

(declare-fun b!10062 () Bool)

(declare-fun res!8328 () Bool)

(assert (=> b!10062 (=> (not res!8328) (not e!5248))))

(declare-fun xxInv!0 (array!694) Bool)

(assert (=> b!10062 (= res!8328 (xxInv!0 xx!44))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4742 () (_ BitVec 32))

(declare-fun b!10063 () Bool)

(declare-fun lt!4741 () (_ BitVec 32))

(assert (=> b!10063 (= e!5248 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4741 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4741) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (= (bvand lt!4742 #b10000000000000000000000000000000) (bvand jz!32 #b10000000000000000000000000000000)) (not (= (bvand lt!4742 #b10000000000000000000000000000000) (bvand (bvadd lt!4742 jz!32) #b10000000000000000000000000000000)))))))

(assert (=> b!10063 (= lt!4741 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10063 (= lt!4742 (bvsub (size!300 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1847 res!8327) b!10062))

(assert (= (and b!10062 res!8328) b!10063))

(declare-fun m!17963 () Bool)

(assert (=> start!1847 m!17963))

(declare-fun m!17965 () Bool)

(assert (=> b!10062 m!17965))

(push 1)

(assert (not b!10062))

(assert (not start!1847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6000 () Bool)

(declare-fun res!8331 () Bool)

(declare-fun e!5252 () Bool)

(assert (=> d!6000 (=> (not res!8331) (not e!5252))))

(assert (=> d!6000 (= res!8331 (= (size!300 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!6000 (= (xxInv!0 xx!44) e!5252)))

(declare-fun b!10066 () Bool)

(declare-fun lambda!542 () Int)

(declare-fun all5!0 (array!694 Int) Bool)

(assert (=> b!10066 (= e!5252 (all5!0 xx!44 lambda!542))))

(assert (= (and d!6000 res!8331) b!10066))

(declare-fun m!17967 () Bool)

(assert (=> b!10066 m!17967))

(assert (=> b!10062 d!6000))

(declare-fun d!6002 () Bool)

(assert (=> d!6002 (= (array_inv!250 xx!44) (bvsge (size!300 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1847 d!6002))

(push 1)

(assert (not b!10066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

