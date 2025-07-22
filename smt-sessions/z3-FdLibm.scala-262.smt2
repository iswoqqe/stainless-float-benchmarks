; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1575 () Bool)

(assert start!1575)

(declare-fun b!7859 () Bool)

(declare-datatypes ((array!634 0))(
  ( (array!635 (arr!280 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!280 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!570 0))(
  ( (Unit!571) )
))
(declare-datatypes ((tuple3!154 0))(
  ( (tuple3!155 (_1!207 Unit!570) (_2!207 (_ BitVec 32)) (_3!177 array!634)) )
))
(declare-fun e!4395 () tuple3!154)

(declare-fun lt!4069 () (_ BitVec 32))

(declare-fun lt!4071 () array!634)

(declare-fun Unit!572 () Unit!570)

(assert (=> b!7859 (= e!4395 (tuple3!155 Unit!572 lt!4069 lt!4071))))

(declare-fun b!7860 () Bool)

(declare-fun res!6400 () Bool)

(declare-fun e!4394 () Bool)

(assert (=> b!7860 (=> (not res!6400) (not e!4394))))

(declare-fun xx!50 () array!634)

(declare-fun xxInv!0 (array!634) Bool)

(assert (=> b!7860 (= res!6400 (xxInv!0 xx!50))))

(declare-fun b!7861 () Bool)

(declare-fun e!4389 () Bool)

(assert (=> b!7861 (= e!4394 e!4389)))

(declare-fun res!6399 () Bool)

(assert (=> b!7861 (=> (not res!6399) (not e!4389))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4070 () (_ BitVec 32))

(assert (=> b!7861 (= res!6399 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4070 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4070) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7861 (= lt!4070 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun res!6397 () Bool)

(assert (=> start!1575 (=> (not res!6397) (not e!4394))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> start!1575 (= res!6397 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1575 e!4394))

(declare-fun f!79 () array!634)

(declare-fun array_inv!230 (array!634) Bool)

(assert (=> start!1575 (array_inv!230 f!79)))

(declare-fun q!51 () array!634)

(assert (=> start!1575 (array_inv!230 q!51)))

(assert (=> start!1575 true))

(assert (=> start!1575 (array_inv!230 xx!50)))

(declare-fun b!7862 () Bool)

(declare-fun e!4392 () Bool)

(assert (=> b!7862 (= e!4389 e!4392)))

(declare-fun res!6401 () Bool)

(assert (=> b!7862 (=> (not res!6401) (not e!4392))))

(declare-fun i!190 () (_ BitVec 32))

(assert (=> b!7862 (= res!6401 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4068 () tuple3!154)

(assert (=> b!7862 (= lt!4068 e!4395)))

(declare-fun c!938 () Bool)

(assert (=> b!7862 (= c!938 (bvsle lt!4069 (bvadd (bvsub (size!280 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7862 (= lt!4069 #b00000000000000000000000000000000)))

(assert (=> b!7862 (= lt!4071 (array!635 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7863 () Bool)

(declare-fun res!6398 () Bool)

(assert (=> b!7863 (=> (not res!6398) (not e!4392))))

(declare-fun fInv!0 (array!634) Bool)

(assert (=> b!7863 (= res!6398 (fInv!0 f!79))))

(declare-fun b!7864 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!634 (_ BitVec 32) array!634) tuple3!154)

(assert (=> b!7864 (= e!4395 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4069 lt!4071))))

(declare-fun b!7865 () Bool)

(assert (=> b!7865 (= e!4392 (and (bvsle i!190 jz!36) (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000100) #b10000000000000000000000000000000)))))))

(declare-fun b!7866 () Bool)

(declare-fun res!6396 () Bool)

(assert (=> b!7866 (=> (not res!6396) (not e!4392))))

(declare-fun qInv!0 (array!634) Bool)

(assert (=> b!7866 (= res!6396 (qInv!0 q!51))))

(assert (= (and start!1575 res!6397) b!7860))

(assert (= (and b!7860 res!6400) b!7861))

(assert (= (and b!7861 res!6399) b!7862))

(assert (= (and b!7862 c!938) b!7864))

(assert (= (and b!7862 (not c!938)) b!7859))

(assert (= (and b!7862 res!6401) b!7863))

(assert (= (and b!7863 res!6398) b!7866))

(assert (= (and b!7866 res!6396) b!7865))

(declare-fun m!12311 () Bool)

(assert (=> b!7866 m!12311))

(declare-fun m!12313 () Bool)

(assert (=> b!7864 m!12313))

(declare-fun m!12315 () Bool)

(assert (=> b!7860 m!12315))

(declare-fun m!12317 () Bool)

(assert (=> b!7863 m!12317))

(declare-fun m!12319 () Bool)

(assert (=> start!1575 m!12319))

(declare-fun m!12321 () Bool)

(assert (=> start!1575 m!12321))

(declare-fun m!12323 () Bool)

(assert (=> start!1575 m!12323))

(check-sat (not b!7860) (not start!1575) (not b!7863) (not b!7864) (not b!7866))
(check-sat)
