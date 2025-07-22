; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1737 () Bool)

(assert start!1737)

(declare-datatypes ((array!664 0))(
  ( (array!665 (arr!288 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!288 (_ BitVec 32))) )
))
(declare-datatypes ((Unit!651 0))(
  ( (Unit!652) )
))
(declare-datatypes ((tuple3!170 0))(
  ( (tuple3!171 (_1!221 Unit!651) (_2!221 (_ BitVec 32)) (_3!185 array!664)) )
))
(declare-fun e!4844 () tuple3!170)

(declare-fun e!19 () (_ BitVec 32))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun b!9163 () Bool)

(declare-fun xx!50 () array!664)

(declare-fun lt!4442 () (_ BitVec 32))

(declare-fun lt!4440 () array!664)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!664 (_ BitVec 32) array!664) tuple3!170)

(assert (=> b!9163 (= e!4844 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4442 lt!4440))))

(declare-fun res!7546 () Bool)

(declare-fun e!4843 () Bool)

(assert (=> start!1737 (=> (not res!7546) (not e!4843))))

(assert (=> start!1737 (= res!7546 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1737 e!4843))

(declare-fun f!79 () array!664)

(declare-fun array_inv!238 (array!664) Bool)

(assert (=> start!1737 (array_inv!238 f!79)))

(declare-fun q!51 () array!664)

(assert (=> start!1737 (array_inv!238 q!51)))

(assert (=> start!1737 true))

(assert (=> start!1737 (array_inv!238 xx!50)))

(declare-fun b!9164 () Bool)

(declare-fun res!7556 () Bool)

(declare-fun e!4845 () Bool)

(assert (=> b!9164 (=> (not res!7556) (not e!4845))))

(declare-fun fInv!0 (array!664) Bool)

(assert (=> b!9164 (= res!7556 (fInv!0 f!79))))

(declare-fun b!9165 () Bool)

(declare-fun res!7548 () Bool)

(assert (=> b!9165 (=> (not res!7548) (not e!4845))))

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9165 (= res!7548 (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9166 () Bool)

(declare-fun res!7551 () Bool)

(assert (=> b!9166 (=> (not res!7551) (not e!4845))))

(declare-fun qInv!0 (array!664) Bool)

(assert (=> b!9166 (= res!7551 (qInv!0 q!51))))

(declare-fun b!9167 () Bool)

(declare-fun e!4840 () Bool)

(assert (=> b!9167 (= e!4840 e!4845)))

(declare-fun res!7552 () Bool)

(assert (=> b!9167 (=> (not res!7552) (not e!4845))))

(assert (=> b!9167 (= res!7552 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4439 () tuple3!170)

(assert (=> b!9167 (= lt!4439 e!4844)))

(declare-fun c!1015 () Bool)

(assert (=> b!9167 (= c!1015 (bvsle lt!4442 (bvadd (bvsub (size!288 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9167 (= lt!4442 #b00000000000000000000000000000000)))

(assert (=> b!9167 (= lt!4440 (array!665 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9168 () Bool)

(assert (=> b!9168 (= e!4845 (or (bvslt i!190 #b00000000000000000000000000000000) (bvsge i!190 (size!288 f!79))))))

(declare-fun b!9169 () Bool)

(declare-fun res!7547 () Bool)

(assert (=> b!9169 (=> (not res!7547) (not e!4845))))

(assert (=> b!9169 (= res!7547 (bvsle i!190 jz!36))))

(declare-fun b!9170 () Bool)

(declare-fun res!7554 () Bool)

(assert (=> b!9170 (=> (not res!7554) (not e!4843))))

(declare-fun xxInv!0 (array!664) Bool)

(assert (=> b!9170 (= res!7554 (xxInv!0 xx!50))))

(declare-fun b!9171 () Bool)

(declare-fun res!7550 () Bool)

(assert (=> b!9171 (=> (not res!7550) (not e!4845))))

(assert (=> b!9171 (= res!7550 (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9172 () Bool)

(declare-fun res!7555 () Bool)

(assert (=> b!9172 (=> (not res!7555) (not e!4845))))

(assert (=> b!9172 (= res!7555 (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9173 () Bool)

(declare-fun res!7549 () Bool)

(assert (=> b!9173 (=> (not res!7549) (not e!4845))))

(assert (=> b!9173 (= res!7549 (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9174 () Bool)

(assert (=> b!9174 (= e!4843 e!4840)))

(declare-fun res!7553 () Bool)

(assert (=> b!9174 (=> (not res!7553) (not e!4840))))

(declare-fun lt!4441 () (_ BitVec 32))

(assert (=> b!9174 (= res!7553 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4441 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4441) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9174 (= lt!4441 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9175 () Bool)

(declare-fun Unit!653 () Unit!651)

(assert (=> b!9175 (= e!4844 (tuple3!171 Unit!653 lt!4442 lt!4440))))

(assert (= (and start!1737 res!7546) b!9170))

(assert (= (and b!9170 res!7554) b!9174))

(assert (= (and b!9174 res!7553) b!9167))

(assert (= (and b!9167 c!1015) b!9163))

(assert (= (and b!9167 (not c!1015)) b!9175))

(assert (= (and b!9167 res!7552) b!9164))

(assert (= (and b!9164 res!7556) b!9166))

(assert (= (and b!9166 res!7551) b!9169))

(assert (= (and b!9169 res!7547) b!9172))

(assert (= (and b!9172 res!7555) b!9165))

(assert (= (and b!9165 res!7548) b!9171))

(assert (= (and b!9171 res!7550) b!9173))

(assert (= (and b!9173 res!7549) b!9168))

(declare-fun m!16663 () Bool)

(assert (=> b!9165 m!16663))

(assert (=> b!9165 m!16663))

(declare-fun m!16665 () Bool)

(assert (=> b!9165 m!16665))

(declare-fun m!16667 () Bool)

(assert (=> b!9170 m!16667))

(declare-fun m!16669 () Bool)

(assert (=> b!9171 m!16669))

(assert (=> b!9171 m!16669))

(declare-fun m!16671 () Bool)

(assert (=> b!9171 m!16671))

(declare-fun m!16673 () Bool)

(assert (=> b!9164 m!16673))

(declare-fun m!16675 () Bool)

(assert (=> b!9163 m!16675))

(declare-fun m!16677 () Bool)

(assert (=> start!1737 m!16677))

(declare-fun m!16679 () Bool)

(assert (=> start!1737 m!16679))

(declare-fun m!16681 () Bool)

(assert (=> start!1737 m!16681))

(declare-fun m!16683 () Bool)

(assert (=> b!9173 m!16683))

(assert (=> b!9173 m!16683))

(declare-fun m!16685 () Bool)

(assert (=> b!9173 m!16685))

(declare-fun m!16687 () Bool)

(assert (=> b!9166 m!16687))

(declare-fun m!16689 () Bool)

(assert (=> b!9172 m!16689))

(assert (=> b!9172 m!16689))

(declare-fun m!16691 () Bool)

(assert (=> b!9172 m!16691))

(push 1)

(assert (not b!9170))

(assert (not b!9164))

(assert (not b!9165))

(assert (not b!9173))

(assert (not b!9171))

(assert (not start!1737))

(assert (not b!9163))

(assert (not b!9166))

(assert (not b!9172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5514 () Bool)

(assert (=> d!5514 (= (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000010))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000010))) (fp.leq (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000010)) (fp #b0 #b10000010110 #b1111111111111111111111100000000000000000000000000000))))))

(assert (=> b!9171 d!5514))

(declare-fun d!5516 () Bool)

(declare-fun res!7559 () Bool)

(declare-fun e!4849 () Bool)

(assert (=> d!5516 (=> (not res!7559) (not e!4849))))

(assert (=> d!5516 (= res!7559 (= (size!288 q!51) #b00000000000000000000000000010100))))

(assert (=> d!5516 (= (qInv!0 q!51) e!4849)))

(declare-fun b!9178 () Bool)

(declare-fun lambda!485 () Int)

(declare-fun all20!0 (array!664 Int) Bool)

(assert (=> b!9178 (= e!4849 (all20!0 q!51 lambda!485))))

(assert (= (and d!5516 res!7559) b!9178))

(declare-fun m!16693 () Bool)

(assert (=> b!9178 m!16693))

(assert (=> b!9166 d!5516))

(declare-fun bs!2394 () Bool)

(declare-fun b!9181 () Bool)

(assert (= bs!2394 (and b!9181 b!9178)))

(declare-fun lambda!488 () Int)

(assert (=> bs!2394 (not (= lambda!488 lambda!485))))

(declare-fun d!5518 () Bool)

(declare-fun res!7562 () Bool)

(declare-fun e!4852 () Bool)

(assert (=> d!5518 (=> (not res!7562) (not e!4852))))

(assert (=> d!5518 (= res!7562 (= (size!288 f!79) #b00000000000000000000000000010100))))

(assert (=> d!5518 (= (fInv!0 f!79) e!4852)))

(assert (=> b!9181 (= e!4852 (all20!0 f!79 lambda!488))))

(assert (= (and d!5518 res!7562) b!9181))

(declare-fun m!16695 () Bool)

(assert (=> b!9181 m!16695))

(assert (=> b!9164 d!5518))

(declare-fun bs!2395 () Bool)

(declare-fun b!9184 () Bool)

(assert (= bs!2395 (and b!9184 b!9178)))

(declare-fun lambda!491 () Int)

(assert (=> bs!2395 (not (= lambda!491 lambda!485))))

(declare-fun bs!2396 () Bool)

(assert (= bs!2396 (and b!9184 b!9181)))

(assert (=> bs!2396 (= lambda!491 lambda!488)))

(declare-fun d!5520 () Bool)

(declare-fun res!7565 () Bool)

(declare-fun e!4855 () Bool)

(assert (=> d!5520 (=> (not res!7565) (not e!4855))))

(assert (=> d!5520 (= res!7565 (= (size!288 xx!50) #b00000000000000000000000000000101))))

(assert (=> d!5520 (= (xxInv!0 xx!50) e!4855)))

(declare-fun all5!0 (array!664 Int) Bool)

(assert (=> b!9184 (= e!4855 (all5!0 xx!50 lambda!491))))

(assert (= (and d!5520 res!7565) b!9184))

(declare-fun m!16697 () Bool)

(assert (=> b!9184 m!16697))

(assert (=> b!9170 d!5520))

(declare-fun d!5522 () Bool)

(assert (=> d!5522 (= (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000011))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000011))) (fp.leq (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000011)) (fp #b0 #b10000010110 #b1111111111111111111111100000000000000000000000000000))))))

(assert (=> b!9165 d!5522))

(declare-fun lt!4455 () (_ BitVec 32))

(declare-fun b!9197 () Bool)

(declare-fun e!4863 () Bool)

(assert (=> b!9197 (= e!4863 (bvsle lt!4442 (bvadd lt!4455 jz!36)))))

(declare-fun d!5524 () Bool)

(declare-fun e!4865 () Bool)

(assert (=> d!5524 e!4865))

(declare-fun res!7575 () Bool)

(assert (=> d!5524 (=> (not res!7575) (not e!4865))))

(declare-fun lt!4458 () tuple3!170)

(assert (=> d!5524 (= res!7575 (and (or (and (bvsle #b00000000000000000000000000000000 (_2!221 lt!4458)) (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand jz!36 #b10000000000000000000000000000000)) (not (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand (bvadd lt!4455 jz!36) #b10000000000000000000000000000000)))) (bvsgt #b00000000000000000000000000000000 (_2!221 lt!4458)) (let ((lhs!275 (bvadd lt!4455 jz!36))) (or (not (= (bvand lhs!275 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (= (bvand lhs!275 #b10000000000000000000000000000000) (bvand (bvadd lhs!275 #b00000000000000000000000000000001) #b10000000000000000000000000000000))))) (or (bvsgt #b00000000000000000000000000000000 (_2!221 lt!4458)) (not (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand jz!36 #b10000000000000000000000000000000))) (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand (bvadd lt!4455 jz!36) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!221 lt!4458)) (bvsle (_2!221 lt!4458) (bvadd lt!4455 jz!36 #b00000000000000000000000000000001))))))

(declare-fun e!4864 () tuple3!170)

(assert (=> d!5524 (= lt!4458 e!4864)))

(declare-fun c!1018 () Bool)

(declare-fun lt!4456 () (_ BitVec 32))

(assert (=> d!5524 (= c!1018 (bvsle lt!4456 (bvadd lt!4455 jz!36)))))

(assert (=> d!5524 (= lt!4456 (bvadd lt!4442 #b00000000000000000000000000000001))))

(declare-datatypes ((tuple2!72 0))(
  ( (tuple2!73 (_1!222 Unit!651) (_2!222 array!664)) )
))
(declare-fun lt!4457 () tuple2!72)

(declare-fun lt!4459 () (_ BitVec 32))

(declare-fun Unit!654 () Unit!651)

(declare-fun Unit!655 () Unit!651)

(assert (=> d!5524 (= lt!4457 (ite (bvsge (bvadd (bvsub lt!4459 lt!4455) lt!4442) #b00000000000000000000000000000000) (tuple2!73 Unit!654 (array!665 (store (arr!288 lt!4440) lt!4442 ((_ to_fp 11 53) roundNearestTiesToEven (select (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000000 #b00000000101000101111100110000011) #b00000000000000000000000000000001 #b00000000011011100100111001000100) #b00000000000000000000000000001010 #b00000000110001010110000110110111) #b00000000000000000000000000001011 #b00000000001001000110111000111010) #b00000000000000000000000000001100 #b00000000010000100100110111010010) #b00000000000000000000000000001101 #b00000000111000000000011001001001) #b00000000000000000000000000001110 #b00000000001011101110101000001001) #b00000000000000000000000000001111 #b00000000110100011001001000011100) #b00000000000000000000000000010000 #b00000000111111100001110111101011) #b00000000000000000000000000010001 #b00000000000111001011000100101001) #b00000000000000000000000000010010 #b00000000101001110011111011101000) #b00000000000000000000000000010011 #b00000000100000100011010111110101) #b00000000000000000000000000000010 #b00000000000101010010100111111100) #b00000000000000000000000000010100 #b00000000001011101011101101000100) #b00000000000000000000000000010101 #b00000000100001001110100110011100) #b00000000000000000000000000010110 #b00000000011100000010011010110100) #b00000000000000000000000000010111 #b00000000010111110111111001000001) #b00000000000000000000000000011000 #b00000000001110011001000111010110) #b00000000000000000000000000011001 #b00000000001110011000001101010011) #b00000000000000000000000000011010 #b00000000001110011111010010011100) #b00000000000000000000000000011011 #b00000000100001000101111110001011) #b00000000000000000000000000011100 #b00000000101111011111100100101000) #b00000000000000000000000000011101 #b00000000001110110001111111111000) #b00000000000000000000000000000011 #b00000000001001110101011111010001) #b00000000000000000000000000011110 #b00000000100101111111111111011110) #b00000000000000000000000000011111 #b00000000000001011001100000001111) #b00000000000000000000000000100000 #b00000000111011110010111100010001) #b00000000000000000000000000100001 #b00000000100010110101101000001010) #b00000000000000000000000000100010 #b00000000011011010001111101101101) #b00000000000000000000000000100011 #b00000000001101100111111011001111) #b00000000000000000000000000100100 #b00000000001001111100101100001001) #b00000000000000000000000000100101 #b00000000101101110100111101000110) #b00000000000000000000000000100110 #b00000000001111110110011010011110) #b00000000000000000000000000100111 #b00000000010111111110101000101101) #b00000000000000000000000000000100 #b00000000111101010011010011011101) #b00000000000000000000000000101000 #b00000000011101010010011110111010) #b00000000000000000000000000101001 #b00000000110001111110101111100101) #b00000000000000000000000000101010 #b00000000111100010111101100111101) #b00000000000000000000000000101011 #b00000000000001110011100111110111) #b00000000000000000000000000101100 #b00000000100010100101001010010010) #b00000000000000000000000000101101 #b00000000111010100110101111111011) #b00000000000000000000000000101110 #b00000000010111111011000100011111) #b00000000000000000000000000101111 #b00000000100011010101110100001000) #b00000000000000000000000000110000 #b00000000010101100000001100110000) #b00000000000000000000000000110001 #b00000000010001101111110001111011) #b00000000000000000000000000000101 #b00000000110000001101101101100010) #b00000000000000000000000000110010 #b00000000011010111010101111110000) #b00000000000000000000000000110011 #b00000000110011111011110000100000) #b00000000000000000000000000110100 #b00000000100110101111010000110110) #b00000000000000000000000000110101 #b00000000000111011010100111100011) #b00000000000000000000000000110110 #b00000000100100010110000101011110) #b00000000000000000000000000110111 #b00000000111001100001101100001000) #b00000000000000000000000000111000 #b00000000011001011001100110000101) #b00000000000000000000000000111001 #b00000000010111110001010010100000) #b00000000000000000000000000111010 #b00000000011010000100000010001101) #b00000000000000000000000000111011 #b00000000111111111101100010000000) #b00000000000000000000000000000110 #b00000000100101011001100100111100) #b00000000000000000000000000111100 #b00000000010011010111001100100111) #b00000000000000000000000000111101 #b00000000001100010000011000000110) #b00000000000000000000000000111110 #b00000000000101010101011011001010) #b00000000000000000000000000111111 #b00000000011100111010100011001001) #b00000000000000000000000001000000 #b00000000011000001110001001111011) #b00000000000000000000000001000001 #b00000000110000001000110001101011) #b00000000000000000000000000000111 #b00000000010000111001000001000001) #b00000000000000000000000000001000 #b00000000111111100101000101100011) #b00000000000000000000000000001001 #b00000000101010111101111010111011) (bvadd (bvsub lt!4459 lt!4455) lt!4442)))) (size!288 lt!4440))) (tuple2!73 Unit!655 lt!4440)))))

(assert (=> d!5524 e!4863))

(declare-fun res!7576 () Bool)

(assert (=> d!5524 (=> (not res!7576) (not e!4863))))

(assert (=> d!5524 (= res!7576 (and (bvsle #b00000000000000000000000000000000 lt!4442) (bvsle lt!4442 (bvadd lt!4455 jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4460 () (_ BitVec 32))

(assert (=> d!5524 (= lt!4459 (ite (bvslt lt!4460 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4460))))

(assert (=> d!5524 (= lt!4460 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> d!5524 (= lt!4455 (bvsub (size!288 xx!50) #b00000000000000000000000000000001))))

(assert (=> d!5524 (= (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4442 lt!4440) lt!4458)))

(declare-fun b!9198 () Bool)

(assert (=> b!9198 (= e!4865 (bvsgt (_2!221 lt!4458) (bvadd lt!4455 jz!36)))))

(assert (=> b!9198 (or (not (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand jz!36 #b10000000000000000000000000000000))) (= (bvand lt!4455 #b10000000000000000000000000000000) (bvand (bvadd lt!4455 jz!36) #b10000000000000000000000000000000)))))

(declare-fun b!9199 () Bool)

(declare-fun Unit!656 () Unit!651)

(assert (=> b!9199 (= e!4864 (tuple3!171 Unit!656 lt!4456 (_2!222 lt!4457)))))

(declare-fun b!9200 () Bool)

(declare-fun res!7577 () Bool)

(assert (=> b!9200 (=> (not res!7577) (not e!4865))))

(assert (=> b!9200 (= res!7577 (fInv!0 (_3!185 lt!4458)))))

(declare-fun b!9201 () Bool)

(declare-fun res!7574 () Bool)

(assert (=> b!9201 (=> (not res!7574) (not e!4863))))

(assert (=> b!9201 (= res!7574 (fInv!0 lt!4440))))

(declare-fun b!9202 () Bool)

(assert (=> b!9202 (= e!4864 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4456 (_2!222 lt!4457)))))

(assert (= (and d!5524 res!7576) b!9201))

(assert (= (and b!9201 res!7574) b!9197))

(assert (= (and d!5524 c!1018) b!9202))

(assert (= (and d!5524 (not c!1018)) b!9199))

(assert (= (and d!5524 res!7575) b!9200))

(assert (= (and b!9200 res!7577) b!9198))

(declare-fun m!16699 () Bool)

(assert (=> d!5524 m!16699))

(declare-fun m!16701 () Bool)

(assert (=> d!5524 m!16701))

(declare-fun m!16703 () Bool)

(assert (=> b!9200 m!16703))

(declare-fun m!16705 () Bool)

(assert (=> b!9201 m!16705))

(declare-fun m!16707 () Bool)

(assert (=> b!9202 m!16707))

(assert (=> b!9163 d!5524))

(declare-fun d!5526 () Bool)

(assert (=> d!5526 (= (array_inv!238 f!79) (bvsge (size!288 f!79) #b00000000000000000000000000000000))))

(assert (=> start!1737 d!5526))

(declare-fun d!5528 () Bool)

(assert (=> d!5528 (= (array_inv!238 q!51) (bvsge (size!288 q!51) #b00000000000000000000000000000000))))

(assert (=> start!1737 d!5528))

(declare-fun d!5530 () Bool)

(assert (=> d!5530 (= (array_inv!238 xx!50) (bvsge (size!288 xx!50) #b00000000000000000000000000000000))))

(assert (=> start!1737 d!5530))

(declare-fun d!5532 () Bool)

(assert (=> d!5532 (= (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.leq (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000100)) (fp #b0 #b10000010110 #b1111111111111111111111100000000000000000000000000000))))))

(assert (=> b!9172 d!5532))

(declare-fun d!5534 () Bool)

(assert (=> d!5534 (= (Q!0 (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000001))) (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000001))) (fp.leq (select (arr!288 f!79) (bvadd i!190 #b00000000000000000000000000000001)) (fp #b0 #b10000010110 #b1111111111111111111111100000000000000000000000000000))))))

(assert (=> b!9173 d!5534))

(push 1)

(assert (not b!9181))

(assert (not b!9202))

(assert (not b!9200))

(assert (not b!9178))

(assert (not b!9184))

(assert (not b!9201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

