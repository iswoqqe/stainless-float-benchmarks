; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3121 () Bool)

(assert start!3121)

(declare-fun b_free!33 () Bool)

(declare-fun b_next!33 () Bool)

(assert (=> start!3121 (= b_free!33 (not b_next!33))))

(declare-fun tp!50 () Bool)

(declare-fun b_and!209 () Bool)

(assert (=> start!3121 (= tp!50 b_and!209)))

(declare-fun b!17491 () Bool)

(declare-fun res!13922 () Bool)

(declare-fun e!9393 () Bool)

(assert (=> b!17491 (=> (not res!13922) (not e!9393))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1382 0))(
  ( (array!1383 (arr!603 (Array (_ BitVec 32) (_ BitVec 32))) (size!603 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1382)

(declare-fun dynLambda!59 (Int (_ BitVec 32)) Bool)

(assert (=> b!17491 (= res!13922 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17492 () Bool)

(declare-fun res!13932 () Bool)

(assert (=> b!17492 (=> (not res!13932) (not e!9393))))

(assert (=> b!17492 (= res!13932 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17493 () Bool)

(assert (=> b!17493 (= e!9393 (bvsge #b00000000000000000000000000001101 (size!603 a!13)))))

(declare-fun b!17494 () Bool)

(declare-fun res!13919 () Bool)

(assert (=> b!17494 (=> (not res!13919) (not e!9393))))

(assert (=> b!17494 (= res!13919 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000001100)))))

(declare-fun b!17495 () Bool)

(declare-fun res!13924 () Bool)

(assert (=> b!17495 (=> (not res!13924) (not e!9393))))

(assert (=> b!17495 (= res!13924 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17496 () Bool)

(declare-fun res!13930 () Bool)

(assert (=> b!17496 (=> (not res!13930) (not e!9393))))

(assert (=> b!17496 (= res!13930 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17497 () Bool)

(declare-fun res!13928 () Bool)

(assert (=> b!17497 (=> (not res!13928) (not e!9393))))

(assert (=> b!17497 (= res!13928 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17498 () Bool)

(declare-fun res!13925 () Bool)

(assert (=> b!17498 (=> (not res!13925) (not e!9393))))

(assert (=> b!17498 (= res!13925 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000011)))))

(declare-fun res!13926 () Bool)

(assert (=> start!3121 (=> (not res!13926) (not e!9393))))

(assert (=> start!3121 (= res!13926 (= (size!603 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3121 e!9393))

(declare-fun array_inv!551 (array!1382) Bool)

(assert (=> start!3121 (array_inv!551 a!13)))

(assert (=> start!3121 tp!50))

(declare-fun b!17499 () Bool)

(declare-fun res!13929 () Bool)

(assert (=> b!17499 (=> (not res!13929) (not e!9393))))

(assert (=> b!17499 (= res!13929 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17500 () Bool)

(declare-fun res!13931 () Bool)

(assert (=> b!17500 (=> (not res!13931) (not e!9393))))

(assert (=> b!17500 (= res!13931 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17501 () Bool)

(declare-fun res!13920 () Bool)

(assert (=> b!17501 (=> (not res!13920) (not e!9393))))

(assert (=> b!17501 (= res!13920 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17502 () Bool)

(declare-fun res!13927 () Bool)

(assert (=> b!17502 (=> (not res!13927) (not e!9393))))

(assert (=> b!17502 (= res!13927 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000001011)))))

(declare-fun b!17503 () Bool)

(declare-fun res!13921 () Bool)

(assert (=> b!17503 (=> (not res!13921) (not e!9393))))

(assert (=> b!17503 (= res!13921 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17504 () Bool)

(declare-fun res!13923 () Bool)

(assert (=> b!17504 (=> (not res!13923) (not e!9393))))

(assert (=> b!17504 (= res!13923 (dynLambda!59 P!6 (select (arr!603 a!13) #b00000000000000000000000000000100)))))

(assert (= (and start!3121 res!13926) b!17501))

(assert (= (and b!17501 res!13920) b!17496))

(assert (= (and b!17496 res!13930) b!17499))

(assert (= (and b!17499 res!13929) b!17498))

(assert (= (and b!17498 res!13925) b!17504))

(assert (= (and b!17504 res!13923) b!17491))

(assert (= (and b!17491 res!13922) b!17500))

(assert (= (and b!17500 res!13931) b!17503))

(assert (= (and b!17503 res!13921) b!17497))

(assert (= (and b!17497 res!13928) b!17495))

(assert (= (and b!17495 res!13924) b!17492))

(assert (= (and b!17492 res!13932) b!17502))

(assert (= (and b!17502 res!13927) b!17494))

(assert (= (and b!17494 res!13919) b!17493))

(declare-fun b_lambda!8117 () Bool)

(assert (=> (not b_lambda!8117) (not b!17500)))

(declare-fun t!367 () Bool)

(declare-fun tb!177 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!367) tb!177))

(declare-fun result!177 () Bool)

(assert (=> tb!177 (= result!177 true)))

(assert (=> b!17500 t!367))

(declare-fun b_and!211 () Bool)

(assert (= b_and!209 (and (=> t!367 result!177) b_and!211)))

(declare-fun b_lambda!8119 () Bool)

(assert (=> (not b_lambda!8119) (not b!17494)))

(declare-fun t!369 () Bool)

(declare-fun tb!179 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!369) tb!179))

(declare-fun result!179 () Bool)

(assert (=> tb!179 (= result!179 true)))

(assert (=> b!17494 t!369))

(declare-fun b_and!213 () Bool)

(assert (= b_and!211 (and (=> t!369 result!179) b_and!213)))

(declare-fun b_lambda!8121 () Bool)

(assert (=> (not b_lambda!8121) (not b!17497)))

(declare-fun t!371 () Bool)

(declare-fun tb!181 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!371) tb!181))

(declare-fun result!181 () Bool)

(assert (=> tb!181 (= result!181 true)))

(assert (=> b!17497 t!371))

(declare-fun b_and!215 () Bool)

(assert (= b_and!213 (and (=> t!371 result!181) b_and!215)))

(declare-fun b_lambda!8123 () Bool)

(assert (=> (not b_lambda!8123) (not b!17495)))

(declare-fun t!373 () Bool)

(declare-fun tb!183 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!373) tb!183))

(declare-fun result!183 () Bool)

(assert (=> tb!183 (= result!183 true)))

(assert (=> b!17495 t!373))

(declare-fun b_and!217 () Bool)

(assert (= b_and!215 (and (=> t!373 result!183) b_and!217)))

(declare-fun b_lambda!8125 () Bool)

(assert (=> (not b_lambda!8125) (not b!17503)))

(declare-fun t!375 () Bool)

(declare-fun tb!185 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!375) tb!185))

(declare-fun result!185 () Bool)

(assert (=> tb!185 (= result!185 true)))

(assert (=> b!17503 t!375))

(declare-fun b_and!219 () Bool)

(assert (= b_and!217 (and (=> t!375 result!185) b_and!219)))

(declare-fun b_lambda!8127 () Bool)

(assert (=> (not b_lambda!8127) (not b!17499)))

(declare-fun t!377 () Bool)

(declare-fun tb!187 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!377) tb!187))

(declare-fun result!187 () Bool)

(assert (=> tb!187 (= result!187 true)))

(assert (=> b!17499 t!377))

(declare-fun b_and!221 () Bool)

(assert (= b_and!219 (and (=> t!377 result!187) b_and!221)))

(declare-fun b_lambda!8129 () Bool)

(assert (=> (not b_lambda!8129) (not b!17492)))

(declare-fun t!379 () Bool)

(declare-fun tb!189 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!379) tb!189))

(declare-fun result!189 () Bool)

(assert (=> tb!189 (= result!189 true)))

(assert (=> b!17492 t!379))

(declare-fun b_and!223 () Bool)

(assert (= b_and!221 (and (=> t!379 result!189) b_and!223)))

(declare-fun b_lambda!8131 () Bool)

(assert (=> (not b_lambda!8131) (not b!17504)))

(declare-fun t!381 () Bool)

(declare-fun tb!191 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!381) tb!191))

(declare-fun result!191 () Bool)

(assert (=> tb!191 (= result!191 true)))

(assert (=> b!17504 t!381))

(declare-fun b_and!225 () Bool)

(assert (= b_and!223 (and (=> t!381 result!191) b_and!225)))

(declare-fun b_lambda!8133 () Bool)

(assert (=> (not b_lambda!8133) (not b!17498)))

(declare-fun t!383 () Bool)

(declare-fun tb!193 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!383) tb!193))

(declare-fun result!193 () Bool)

(assert (=> tb!193 (= result!193 true)))

(assert (=> b!17498 t!383))

(declare-fun b_and!227 () Bool)

(assert (= b_and!225 (and (=> t!383 result!193) b_and!227)))

(declare-fun b_lambda!8135 () Bool)

(assert (=> (not b_lambda!8135) (not b!17502)))

(declare-fun t!385 () Bool)

(declare-fun tb!195 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!385) tb!195))

(declare-fun result!195 () Bool)

(assert (=> tb!195 (= result!195 true)))

(assert (=> b!17502 t!385))

(declare-fun b_and!229 () Bool)

(assert (= b_and!227 (and (=> t!385 result!195) b_and!229)))

(declare-fun b_lambda!8137 () Bool)

(assert (=> (not b_lambda!8137) (not b!17496)))

(declare-fun t!387 () Bool)

(declare-fun tb!197 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!387) tb!197))

(declare-fun result!197 () Bool)

(assert (=> tb!197 (= result!197 true)))

(assert (=> b!17496 t!387))

(declare-fun b_and!231 () Bool)

(assert (= b_and!229 (and (=> t!387 result!197) b_and!231)))

(declare-fun b_lambda!8139 () Bool)

(assert (=> (not b_lambda!8139) (not b!17491)))

(declare-fun t!389 () Bool)

(declare-fun tb!199 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!389) tb!199))

(declare-fun result!199 () Bool)

(assert (=> tb!199 (= result!199 true)))

(assert (=> b!17491 t!389))

(declare-fun b_and!233 () Bool)

(assert (= b_and!231 (and (=> t!389 result!199) b_and!233)))

(declare-fun b_lambda!8141 () Bool)

(assert (=> (not b_lambda!8141) (not b!17501)))

(declare-fun t!391 () Bool)

(declare-fun tb!201 () Bool)

(assert (=> (and start!3121 (= P!6 P!6) t!391) tb!201))

(declare-fun result!201 () Bool)

(assert (=> tb!201 (= result!201 true)))

(assert (=> b!17501 t!391))

(declare-fun b_and!235 () Bool)

(assert (= b_and!233 (and (=> t!391 result!201) b_and!235)))

(declare-fun m!27711 () Bool)

(assert (=> b!17492 m!27711))

(assert (=> b!17492 m!27711))

(declare-fun m!27713 () Bool)

(assert (=> b!17492 m!27713))

(declare-fun m!27715 () Bool)

(assert (=> b!17500 m!27715))

(assert (=> b!17500 m!27715))

(declare-fun m!27717 () Bool)

(assert (=> b!17500 m!27717))

(declare-fun m!27719 () Bool)

(assert (=> b!17494 m!27719))

(assert (=> b!17494 m!27719))

(declare-fun m!27721 () Bool)

(assert (=> b!17494 m!27721))

(declare-fun m!27723 () Bool)

(assert (=> b!17497 m!27723))

(assert (=> b!17497 m!27723))

(declare-fun m!27725 () Bool)

(assert (=> b!17497 m!27725))

(declare-fun m!27727 () Bool)

(assert (=> b!17503 m!27727))

(assert (=> b!17503 m!27727))

(declare-fun m!27729 () Bool)

(assert (=> b!17503 m!27729))

(declare-fun m!27731 () Bool)

(assert (=> b!17491 m!27731))

(assert (=> b!17491 m!27731))

(declare-fun m!27733 () Bool)

(assert (=> b!17491 m!27733))

(declare-fun m!27735 () Bool)

(assert (=> b!17496 m!27735))

(assert (=> b!17496 m!27735))

(declare-fun m!27737 () Bool)

(assert (=> b!17496 m!27737))

(declare-fun m!27739 () Bool)

(assert (=> b!17495 m!27739))

(assert (=> b!17495 m!27739))

(declare-fun m!27741 () Bool)

(assert (=> b!17495 m!27741))

(declare-fun m!27743 () Bool)

(assert (=> start!3121 m!27743))

(declare-fun m!27745 () Bool)

(assert (=> b!17499 m!27745))

(assert (=> b!17499 m!27745))

(declare-fun m!27747 () Bool)

(assert (=> b!17499 m!27747))

(declare-fun m!27749 () Bool)

(assert (=> b!17501 m!27749))

(assert (=> b!17501 m!27749))

(declare-fun m!27751 () Bool)

(assert (=> b!17501 m!27751))

(declare-fun m!27753 () Bool)

(assert (=> b!17498 m!27753))

(assert (=> b!17498 m!27753))

(declare-fun m!27755 () Bool)

(assert (=> b!17498 m!27755))

(declare-fun m!27757 () Bool)

(assert (=> b!17504 m!27757))

(assert (=> b!17504 m!27757))

(declare-fun m!27759 () Bool)

(assert (=> b!17504 m!27759))

(declare-fun m!27761 () Bool)

(assert (=> b!17502 m!27761))

(assert (=> b!17502 m!27761))

(declare-fun m!27763 () Bool)

(assert (=> b!17502 m!27763))

(push 1)

(assert (not b_lambda!8139))

(assert (not b_lambda!8117))

(assert b_and!235)

(assert (not b_lambda!8133))

(assert (not b_lambda!8125))

(assert (not b_next!33))

(assert (not start!3121))

(assert (not b_lambda!8141))

(assert (not b_lambda!8127))

(assert (not b_lambda!8137))

(assert (not b_lambda!8129))

(assert (not b_lambda!8121))

(assert (not b_lambda!8119))

(assert (not b_lambda!8131))

(assert (not b_lambda!8135))

(assert (not b_lambda!8123))

(check-sat)

(pop 1)

(push 1)

(assert b_and!235)

(assert (not b_next!33))

(check-sat)

(pop 1)

