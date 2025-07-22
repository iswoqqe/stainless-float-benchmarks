; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1879 () Bool)

(assert start!1879)

(declare-fun i!179 () (_ BitVec 32))

(declare-fun b!10207 () Bool)

(declare-fun lt!4829 () (_ BitVec 32))

(declare-fun e!5391 () Bool)

(declare-datatypes ((array!720 0))(
  ( (array!721 (arr!312 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!312 (_ BitVec 32))) )
))
(declare-fun f!58 () array!720)

(declare-fun lt!4827 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(assert (=> b!10207 (= e!5391 (and (bvsle i!179 (bvadd lt!4827 jz!32)) (bvsge (bvadd (bvsub lt!4829 lt!4827) i!179) #b00000000000000000000000000000000) (or (bvslt i!179 #b00000000000000000000000000000000) (bvsge i!179 (size!312 f!58)))))))

(declare-fun b!10205 () Bool)

(declare-fun e!5390 () Bool)

(assert (=> b!10205 (= e!5390 e!5391)))

(declare-fun res!8471 () Bool)

(assert (=> b!10205 (=> (not res!8471) (not e!5391))))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> b!10205 (= res!8471 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4829 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4827 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4828 () (_ BitVec 32))

(assert (=> b!10205 (= lt!4829 (ite (bvslt lt!4828 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4828))))

(assert (=> b!10205 (= lt!4828 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun xx!44 () array!720)

(assert (=> b!10205 (= lt!4827 (bvsub (size!312 xx!44) #b00000000000000000000000000000001))))

(declare-fun res!8470 () Bool)

(assert (=> start!1879 (=> (not res!8470) (not e!5390))))

(assert (=> start!1879 (= res!8470 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1879 e!5390))

(assert (=> start!1879 true))

(declare-fun array_inv!262 (array!720) Bool)

(assert (=> start!1879 (array_inv!262 xx!44)))

(assert (=> start!1879 (array_inv!262 f!58)))

(declare-fun b!10206 () Bool)

(declare-fun res!8469 () Bool)

(assert (=> b!10206 (=> (not res!8469) (not e!5391))))

(declare-fun fInv!0 (array!720) Bool)

(assert (=> b!10206 (= res!8469 (fInv!0 f!58))))

(declare-fun b!10204 () Bool)

(declare-fun res!8472 () Bool)

(assert (=> b!10204 (=> (not res!8472) (not e!5390))))

(declare-fun xxInv!0 (array!720) Bool)

(assert (=> b!10204 (= res!8472 (xxInv!0 xx!44))))

(assert (= (and start!1879 res!8470) b!10204))

(assert (= (and b!10204 res!8472) b!10205))

(assert (= (and b!10205 res!8471) b!10206))

(assert (= (and b!10206 res!8469) b!10207))

(declare-fun m!18055 () Bool)

(assert (=> start!1879 m!18055))

(declare-fun m!18057 () Bool)

(assert (=> start!1879 m!18057))

(declare-fun m!18059 () Bool)

(assert (=> b!10206 m!18059))

(declare-fun m!18061 () Bool)

(assert (=> b!10204 m!18061))

(push 1)

(assert (not b!10206))

(assert (not start!1879))

(assert (not b!10204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6020 () Bool)

(declare-fun res!8475 () Bool)

(declare-fun e!5396 () Bool)

(assert (=> d!6020 (=> (not res!8475) (not e!5396))))

(assert (=> d!6020 (= res!8475 (= (size!312 f!58) #b00000000000000000000000000010100))))

(assert (=> d!6020 (= (fInv!0 f!58) e!5396)))

(declare-fun b!10210 () Bool)

(declare-fun lambda!548 () Int)

(declare-fun all20!0 (array!720 Int) Bool)

(assert (=> b!10210 (= e!5396 (all20!0 f!58 lambda!548))))

(assert (= (and d!6020 res!8475) b!10210))

(declare-fun m!18063 () Bool)

(assert (=> b!10210 m!18063))

(assert (=> b!10206 d!6020))

(declare-fun d!6022 () Bool)

(assert (=> d!6022 (= (array_inv!262 xx!44) (bvsge (size!312 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1879 d!6022))

(declare-fun d!6024 () Bool)

(assert (=> d!6024 (= (array_inv!262 f!58) (bvsge (size!312 f!58) #b00000000000000000000000000000000))))

(assert (=> start!1879 d!6024))

(declare-fun bs!2565 () Bool)

(declare-fun b!10213 () Bool)

(assert (= bs!2565 (and b!10213 b!10210)))

(declare-fun lambda!551 () Int)

(assert (=> bs!2565 (= lambda!551 lambda!548)))

(declare-fun d!6026 () Bool)

(declare-fun res!8478 () Bool)

(declare-fun e!5399 () Bool)

(assert (=> d!6026 (=> (not res!8478) (not e!5399))))

(assert (=> d!6026 (= res!8478 (= (size!312 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!6026 (= (xxInv!0 xx!44) e!5399)))

(declare-fun all5!0 (array!720 Int) Bool)

(assert (=> b!10213 (= e!5399 (all5!0 xx!44 lambda!551))))

(assert (= (and d!6026 res!8478) b!10213))

(declare-fun m!18065 () Bool)

(assert (=> b!10213 m!18065))

(assert (=> b!10204 d!6026))

(push 1)

(assert (not b!10213))

(assert (not b!10210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

