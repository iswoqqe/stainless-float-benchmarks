; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1853 () Bool)

(assert start!1853)

(declare-fun res!8337 () Bool)

(declare-fun e!5257 () Bool)

(assert (=> start!1853 (=> (not res!8337) (not e!5257))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1853 (= res!8337 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1853 e!5257))

(assert (=> start!1853 true))

(declare-datatypes ((array!697 0))(
  ( (array!698 (arr!301 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!301 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!697)

(declare-fun array_inv!251 (array!697) Bool)

(assert (=> start!1853 (array_inv!251 xx!44)))

(declare-fun b!10071 () Bool)

(declare-fun res!8336 () Bool)

(assert (=> b!10071 (=> (not res!8336) (not e!5257))))

(declare-fun xxInv!0 (array!697) Bool)

(assert (=> b!10071 (= res!8336 (xxInv!0 xx!44))))

(declare-fun lt!4745 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun b!10072 () Bool)

(assert (=> b!10072 (= e!5257 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4745 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4745) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (let ((lhs!48 (bvadd (bvsub (size!301 xx!44) #b00000000000000000000000000000001) jz!32))) (and (= (bvand lhs!48 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!48 #b10000000000000000000000000000000) (bvand (bvadd lhs!48 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!10072 (= lt!4745 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1853 res!8337) b!10071))

(assert (= (and b!10071 res!8336) b!10072))

(declare-fun m!17969 () Bool)

(assert (=> start!1853 m!17969))

(declare-fun m!17971 () Bool)

(assert (=> b!10071 m!17971))

(push 1)

(assert (not start!1853))

(assert (not b!10071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6005 () Bool)

(assert (=> d!6005 (= (array_inv!251 xx!44) (bvsge (size!301 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1853 d!6005))

(declare-fun d!6007 () Bool)

(declare-fun res!8340 () Bool)

(declare-fun e!5261 () Bool)

(assert (=> d!6007 (=> (not res!8340) (not e!5261))))

(assert (=> d!6007 (= res!8340 (= (size!301 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!6007 (= (xxInv!0 xx!44) e!5261)))

(declare-fun b!10075 () Bool)

(declare-fun lambda!545 () Int)

(declare-fun all5!0 (array!697 Int) Bool)

(assert (=> b!10075 (= e!5261 (all5!0 xx!44 lambda!545))))

(assert (= (and d!6007 res!8340) b!10075))

(declare-fun m!17973 () Bool)

(assert (=> b!10075 m!17973))

(assert (=> b!10071 d!6007))

(push 1)

(assert (not b!10075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

